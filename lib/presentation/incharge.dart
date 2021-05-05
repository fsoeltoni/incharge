import 'package:flutter/material.dart';
import 'package:incharge/presentation/sign_in/sign_in_page.dart';

class Incharge extends StatelessWidget {
  const Incharge() : super();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SignInPage(),
      ),
    );
  }
}
