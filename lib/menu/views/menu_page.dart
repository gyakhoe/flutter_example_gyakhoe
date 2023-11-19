import 'package:flutter/material.dart';
import 'package:flutter_example_gyakhoe/insta-profile/insta_profile.dart';

import 'package:flutter_example_gyakhoe/login/login.dart';

class MainMenuPage extends StatelessWidget {
  final String title;
  const MainMenuPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(children: [
        _menuButton(
            context: context,
            widget: const LoginPage(),
            // materialPageRoute:
            //     MaterialPageRoute(builder: (loginContext) => const LoginPage()),
            buttonLabel: 'Login View'),
        _menuButton(
            widget: const InstaProfilePage(),
            context: context,
            // materialPageRoute: MaterialPageRoute(
            //     builder: (profileContext) => const InstaProfilePage()),
            buttonLabel: 'Instagram Profile')
      ]),
    );
  }

  MaterialButton _menuButton({
    required BuildContext context,
    required Widget widget,
    required String buttonLabel,
  }) {
    return MaterialButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(5, 5),
                  color: Colors.blueGrey,
                )
              ]),
          child: Center(
              child: Text(
            buttonLabel,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
