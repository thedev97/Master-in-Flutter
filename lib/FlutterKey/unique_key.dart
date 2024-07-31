import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/FlutterKey/model/user.dart';
import 'package:flutter_interview_ques/FlutterKey/widgets/user_tile.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  UserListState createState() => UserListState();
}

class UserListState extends State<UserList> {
  List<User> _user = [
    User(1, "Soumya"),
    User(2, "Ashis"),
    User(3, "Suraj"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Unique Key',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
      )),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Example of creating UniqueKeys and printing them
                for (var user in _user) {
                  final key = UniqueKey();
                  debugPrint('UniqueKey for ${user.name}: $key');
                }
              });
            },
            child: const Text('Print Unique Keys', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _user = [
                  User(1, "Soumya"),
                  User(2, "Ashis"),
                  User(3, "Suraj"),
                  User(4, "Rakesh"),
                  User(5, "Aishwarya"),
                ];
              });
            },
            child: const Text('Update List',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          ),
          Expanded(
            child: ListView(
              children: _user.map((animal) {
                return UserTile(
                  key: UniqueKey(),
                  user: animal,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
