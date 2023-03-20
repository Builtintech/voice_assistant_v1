// This file is used to know the user logged in or not

import 'package:assistant/Auth/phoneauth.dart';
import 'package:assistant/Home/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HOME();
          } else {
            return PhoneAuth();
          }
        },
      ),
    );
  }
}
