import 'package:flutter/material.dart';
import 'package:flutter_interview_ques/FlutterKey/model/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({required Key key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
      subtitle: Text(
        'User ID: ${user.id.toString()}',
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
      ),
    );
  }
}
