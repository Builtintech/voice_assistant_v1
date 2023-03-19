import 'package:assistant/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final _email = TextEditingController();
    final _password = TextEditingController();
    // final _confirmpassword = TextEditingController();

    void signup() async {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email.text.trim(),
        password: _password.text.trim(),
      );
      Get.offAll(Home());
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180, left: 17, right: 17),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Email',
                    // labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
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
                    // labelText: 'Passwrd',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 17, right: 17),
              //   child: TextField(
              //     keyboardType: TextInputType.visiblePassword,
              //     obscureText: true,
              //     controller: _confirmpassword,
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(Icons.password),
              //       enabledBorder: OutlineInputBorder(
              //         borderSide:
              //             BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //       hintText: 'Password',
              //       // labelText: 'Passwrd',
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 37,
              ),
              GestureDetector(
                onTap: () {
                  signup();
                },
                child: Container(
                  width: 90,
                  height: 40,
                  child: Center(
                    child: Text(
                      'Signup',
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
                child: Container(
                  width: 240,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Signup with Google',
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
