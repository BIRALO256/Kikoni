import 'package:flutter/material.dart';

import '../pages/LoginPage.dart';
import '../pages/RegisterPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //initially we are showing the logiin page
  bool showLoginPage = true;

  void toogleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        showRegisterPage: toogleScreens,
      );
    } else {
      return RegisterPage(
        showLoginPage: toogleScreens,
      );
    }
  }
}
