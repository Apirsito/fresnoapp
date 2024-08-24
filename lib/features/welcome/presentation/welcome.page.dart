import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/logo.png")),
      ),
      backgroundColor: Color.fromARGB(255, 0, 158, 143),
    );
  }
}
