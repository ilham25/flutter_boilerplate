import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/bloc/templates/search_filter_bloc.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/content/card.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_item.dart';
import 'package:flutter_boilerplate/core/widgets/control/filter.dart';
import 'package:flutter_boilerplate/core/widgets/control/sort.dart';
import 'package:flutter_boilerplate/core/widgets/input/search_bar.dart';
import 'package:flutter_boilerplate/core/widgets/search/search.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:flutter_boilerplate/utils/helper/debouncer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage()
class SearchFilterScreen extends StatelessWidget {
  const SearchFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SearchFilterBloc()..getList()),
      ],
      child: SearchFilterBody(),
    );
  }
}

class SearchFilterBody extends StatelessWidget {
  SearchFilterBody({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: .only(
                top: AppSetting.setHeight(10),
                left: AppSetting.setWidth(MyTheme.defaultPadding),
                right: AppSetting.setWidth(MyTheme.defaultPadding),
              ),
              child: UIKitSearchBar(
                placeholder: "Search",
                controller: _searchController,
                readOnly: true,
                onTap: () async {
                  final result = await UIKitSearch.show<String>(
                    context: context,
                    delegate: SearchFilterDelegate(
                      bloc: context.read<SearchFilterBloc>(),
                    )..query = _searchController.text,
                  );

                  if (result == null || !context.mounted) return;

                  _searchController.text = result;
                  context.read<SearchFilterBloc>().search(result);
                },
                onClear: () {
                  _searchController.clear();
                  context.read<SearchFilterBloc>().clearQuery();
                },
              ),
            ),
            Padding(
              padding: .symmetric(
                horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                vertical: AppSetting.setHeight(MyTheme.defaultPadding),
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [UIKitSort(), UIKitFilter(count: 2)],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 2));
                },
                child: BlocBuilder<SearchFilterBloc, SearchFilterBlocState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (items, query) => CustomScrollView(
                      slivers: [
                        SliverPadding(
                          padding: .symmetric(
                            horizontal: AppSetting.setWidth(
                              MyTheme.defaultPadding,
                            ),
                            vertical: AppSetting.setHeight(
                              MyTheme.defaultPadding,
                            ),
                          ),
                          sliver: SliverMasonryGrid.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: AppSetting.setHeight(12),
                            crossAxisSpacing: AppSetting.setWidth(12),
                            childCount: items.length,
                            itemBuilder: (context, index) {
                              final item = items.elementAt(index);

                              return UIKitCard(
                                title: item.title,
                                subtitle:
                                    "€ ${item.price.toDouble().toStringAsFixed(2)}",
                                image: item.image,
                                titleStyle: MyTheme.style.body.s,
                                subtitleStyle: MyTheme.style.heading.h4
                                    .copyWith(
                                      color: MyTheme.color.palette.dark.darkest,
                                    ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * ListView.builder(
                    padding: .symmetric(
                      horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                      vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items.elementAt(index);

                      return UIKitCard(
                        title: item.title,
                        subtitle:
                            "€ ${item.price.toDouble().toStringAsFixed(2)}",
                        image: item.image,
                        titleStyle: MyTheme.style.body.s,
                        subtitleStyle: MyTheme.style.heading.h4.copyWith(
                          color: MyTheme.color.palette.dark.darkest,
                        ),
                      );
                    },
                  )
 */

class SearchFilterDelegate extends UIKitSearchDelegate<String> {
  final SearchFilterBloc bloc;

  SearchFilterDelegate({required this.bloc}) : super();

  final Debouncer _debouncer = Debouncer(delay: Duration(milliseconds: 500));
  @override
  void onQuery(BuildContext context, String query) {
    _debouncer(() {
      bloc.search(query);
    });
  }

  @override
  void onSubmitted(BuildContext context, String query) {
    close(context, query);
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocConsumer<SearchFilterBloc, SearchFilterBlocState>(
      bloc: bloc,
      listener: (context, state) {
        debugPrint("BlocConsumerState: $state");
      },
      builder: (context, state) => state.maybeWhen(
        orElse: () => Text("Loading...", style: MyTheme.style.action.m),
        loaded: (items, query) => ListView.builder(
          itemCount: items.length,
          padding: .symmetric(
            horizontal: AppSetting.setWidth(16),
            vertical: AppSetting.setHeight(16),
          ),
          itemBuilder: (context, index) {
            final item = items.elementAt(index);

            return UIKitListItem(
              title: item.title,
              right: SizedBox.shrink(),
              onTap: () {
                close(context, item.title);
              },
            );
          },
        ),
      ),
    );
  }
}
