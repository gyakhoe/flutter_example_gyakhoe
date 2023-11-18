import 'package:flutter/material.dart';

import 'dart:developer' as developer;

class MainMenuPage extends StatelessWidget {
  final String title;
  const MainMenuPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(children: [
        MaterialButton(
          onPressed: () => developer.log('The login UI button is tapped'),
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
