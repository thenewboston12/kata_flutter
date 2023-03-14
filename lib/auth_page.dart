import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:senproj/loginpage.dart';
import 'package:senproj/main.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //is the user logged in
          if (snapshot.hasData) {
            return DetectionScreen();
          }

          //is the user not logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
