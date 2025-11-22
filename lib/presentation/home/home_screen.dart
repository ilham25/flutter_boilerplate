import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/bloc/theme/theme_bloc.dart';
import 'package:flutter_boilerplate/bloc/user/user_bloc.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/components/idle/idle_item.dart';
import 'package:flutter_boilerplate/core/components/loading/loading_listview.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.white,
            fontSize: AppSetting.setFontSize(45),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: MyTheme.color.primary,
        actions: [],
      ),
      body: BlocProvider(
        create: (context) => UserBloc()..getUsers(params: {'page': 1}),
        child: const HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.when(
          initial: () => const IdleLoading(),
          loading: () => const LoadingListView(),
          error: (message) => IdleNoItemCenter(title: message),
          loaded: (users, page, hasReachedMax, onLoadMore) {
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text("${user.firstName} ${user.lastName}"),
                  subtitle: Text(user.email ?? ""),
                );
              },
            );
          },
        );
      },
    );
  }
}
