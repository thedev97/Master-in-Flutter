import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/FlutterKey/model/user.dart';


class UserSearchDelegate extends SearchDelegate<String> {
  final Function(String) onSearch;

  UserSearchDelegate({required this.onSearch});

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<User> suggestions = _suggestions(query);
    return ListView(
      children: suggestions.map((user) => ListTile(
        title: Text(user.name, style: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 14),),
        onTap: () {
          query = user.name;
          showResults(context);
        },
      )).toList(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    onSearch(query);
    return Container();
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          onSearch(query);
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  List<User> _suggestions(String query) {
    final List<User> allUsers = [
      User(1, "Soumya"),
      User(2, "Ashis"),
      User(3, "Suraj"),
    ];
    return allUsers.where((user) {
      return user.name.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}