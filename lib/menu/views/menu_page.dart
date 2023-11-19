import 'package:flutter/material.dart';


import 'package:flutter_example_gyakhoe/login/login.dart';

class MainMenuPage extends StatelessWidget {
  final String title;
  const MainMenuPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(children: [
        MaterialButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage())),
          color: Colors.blue,
          hoverColor: Colors.black,
          child: const Text(
            'Login View',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}
