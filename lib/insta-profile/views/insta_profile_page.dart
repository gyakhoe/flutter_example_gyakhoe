import 'package:flutter/material.dart';

class InstaProfilePage extends StatelessWidget {
  const InstaProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        padding: const EdgeInsets.all(5),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Placeholder(),
                    flex: 4,
                  ),
                  Expanded(
                    child: Placeholder(),
                    flex: 6,
                  ),
                ],
              ),
              flex: 5,
            ),
            Expanded(
              child: Placeholder(),
              flex: 5,
            )
          ],
        ),
      ),
    );
  }
}
