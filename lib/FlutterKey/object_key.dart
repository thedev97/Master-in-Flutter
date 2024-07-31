import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/FlutterKey/model/user.dart';
import 'package:flutter_interview_ques/FlutterKey/widgets/user_tile.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  UsersListPageState createState() => UsersListPageState();
}

class UsersListPageState extends State<UsersListPage> {
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
            'Object Key',
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
                  debugPrint('Object key for ${user.name}: $key');
                }
              });
            },
            child: const Text('Print Object Keys', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
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
                  key: ObjectKey(animal),
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
