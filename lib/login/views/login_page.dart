import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          requiredTextField(hintText: 'username', isObsecured: false),
          requiredTextField(hintText: 'password', isObsecured: true),
          _loginButton(context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Tap to go back')),
          )
        ],
      ),
    );
  }

  MaterialButton _loginButton(BuildContext context) {
    return MaterialButton(
      onPressed: () => dev.log('Login button is pressed'),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3))
            ],
            color: Theme.of(context).primaryColor),
        height: 50,
        child: const Center(
            child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }

  Padding requiredTextField({
    required String hintText,
    required bool isObsecured,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        obscureText: isObsecured,
      ),
    );
  }
}
