import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
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
          style: MyTheme.style.lg.regular,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: MyTheme.color.primary,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: MyTheme.color.white,
            ),
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
              // context.router.push(const SettingsRoute());
            },
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MySearchDelegate extends SearchDelegate {
  final List<String> searchList = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Fig",
    "Grapes",
    "Kiwi",
    "Lemon",
    "Mango",
    "Orange",
    "Papaya",
    "Raspberry",
    "Strawberry",
    "Tomato",
    "Watermelon",
  ];

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  TextStyle get searchFieldStyle => MyTheme.style.base.regular;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
          showSuggestions(context);
        },
      )
    ];
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestionList = query.isEmpty
        ? []
        : searchList
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            // Show the search results based on the selected suggestion.
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> searchResults = searchList
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(searchResults[index]),
          onTap: () {
            // Handle the selected search result.
            close(context, searchResults[index]);
          },
        );
      },
    );
  }
}
