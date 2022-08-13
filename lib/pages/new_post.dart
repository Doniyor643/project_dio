import 'package:flutter/material.dart';

import '../views/new_post_view.dart';


class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new User'),
        backgroundColor: Colors.pink,
      ),
      body: getBody(),
    );
  }
}