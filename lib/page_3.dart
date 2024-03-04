import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Made With ♥ by lambda'),
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'From this page, when you press back, you are supposed to go to home page. And if you press another back from there(from your phone\'s back key) app should exit. But it\s not. Do You know why?',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
