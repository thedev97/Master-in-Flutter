import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/FlutterKey/model/user.dart';
import 'package:flutter_interview_ques/FlutterKey/widgets/filter.dart';
import 'package:flutter_interview_ques/FlutterKey/widgets/user_tile.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  final List<User> _user = [
    User(1, "Soumya"),
    User(2, "Ashis"),
    User(3, "Suraj"),
  ];

  String _filter = '';

  @override
  Widget build(BuildContext context) {
    List<User> filteredUsers = _user.where((item) {
      return item.name.toLowerCase().contains(_filter.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User Details',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              setState(() {
                _user.shuffle();
              });
            },
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: UserSearchDelegate(onSearch: (query) {
                  Future.microtask(() {
                    setState(() {
                      _filter = query;
                    });
                  });
                }),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              for (var user in _user) {
                final key = ValueKey(user.id);
                debugPrint('Value key for ${user.name}: $key');
              }
            },
            child: const Text('Print Value Keys',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ReorderableListView(
              onReorder: (oldIndex, newIndex) {
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex -= 1;
                  }
                  final user = _user.removeAt(oldIndex);
                  _user.insert(newIndex, user);
                });
              },
              children: filteredUsers.map((user) {
                return UserTile(
                  key: ValueKey(user.id), // Unique key for each user tile
                  user: user,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
