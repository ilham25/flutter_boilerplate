import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/input/search_bar.dart';
import 'package:flutter_boilerplate/routing/route.gr.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

// class UIKitSearch {
//   static Future<T?> show<T>({
//     required BuildContext context,
//     required UIKitSearchDelegate delegate,
//   }) async {
//     return await context.router.push(SearchRoute(delegate: delegate));
//   }
// }

Future<T?> showUIKitSearch<T>({
  required BuildContext context,
  required UIKitSearchDelegate delegate,
}) async {
  return await context.router.push(SearchRoute(delegate: delegate));
}

abstract class UIKitSearchDelegate<T> {
  String placeholder = "Search";

  final TextEditingController _queryTextController = TextEditingController();
  FocusNode? _focusNode;

  String get query => _queryTextController.text;

  set query(String value) {
    // _queryTextController.value = TextEditingValue(
    //   text: value,
    //   selection: TextSelection.collapsed(offset: value.length),
    // );
    _queryTextController.text = value;
  }

  Widget buildResults(BuildContext context);

  void close(BuildContext context, T? result) {
    context.router.maybePop(result);
  }

  void onSubmitted(BuildContext context, String query) {}

  void onQuery(BuildContext context, String query) {}

  void _pop(BuildContext context) {
    _focusNode?.unfocus();
    context.router.maybePop();
  }
}

@RoutePage()
class SearchScreen extends StatelessWidget {
  final UIKitSearchDelegate delegate;

  const SearchScreen({super.key, required this.delegate});

  @override
  Widget build(BuildContext context) {
    return SearchBody(delegate: delegate);
  }
}

class SearchBody extends StatefulWidget {
  final UIKitSearchDelegate delegate;

  const SearchBody({super.key, required this.delegate});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  late final FocusNode focusNode = FocusNode(
    onKeyEvent: (FocusNode node, KeyEvent event) {
      // When the user presses the escape key, close the search page.
      if (event is KeyDownEvent &&
          event.logicalKey == LogicalKeyboardKey.escape) {
        widget.delegate._pop(context);
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    },
  );

  @override
  void initState() {
    super.initState();
    widget.delegate._queryTextController.addListener(_onQueryChanged);
    widget.delegate._focusNode = focusNode;
  }

  @override
  void dispose() {
    super.dispose();
    widget.delegate._queryTextController.removeListener(_onQueryChanged);
    widget.delegate._focusNode = null;
    focusNode.dispose();
  }

  void _onQueryChanged() {
    widget.delegate.onQuery(context, widget.delegate.query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: .symmetric(
                vertical: AppSetting.setHeight(10),
                horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
              ),
              child: Semantics(
                inputType: .search,
                child: UIKitSearchBar(
                  placeholder: "Search",
                  controller: widget.delegate._queryTextController,
                  autofocus: true,
                  onSubmitted: (value) {
                    widget.delegate.onSubmitted(context, value);
                  },
                ),
              ),
            ),
            Expanded(child: widget.delegate.buildResults(context)),
          ],
        ),
      ),
    );
  }
}
