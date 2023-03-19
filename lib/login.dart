import 'package:assistant/auth_services.dart';
import 'package:assistant/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final _email = TextEditingController();
    final _password = TextEditingController();

    void signIn() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email.text, password: _password.text);
      Get.offAll(Home());
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200.0, left: 17, right: 17),
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Email',
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: TextFormField(
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Password',
                    labelText: 'Passwrd',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Field must not be empty';
                    } else if (value.length < 6) {
                      return 'Password length should contain 6';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 37,
              ),
              GestureDetector(
                onTap: () {
                  ///login
                  signIn();
                },
                child: Container(
                  width: 90,
                  height: 40,
                  child: Center(
                    child: Text(
                      'Signin',
                      style: GoogleFonts.acme(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 196, 219),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Authservice().signInwithGoogle(),
                child: Container(
                  width: 240,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Login with Google',
                      style: GoogleFonts.acme(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 196, 219),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
