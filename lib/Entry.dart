import 'package:assistant/login.dart';
import 'package:assistant/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(Login());
                    // Get.offAll(Home());
                  },
                  child: Container(
                    width: 70,
                    height: 40,
                    child: Center(
                      child: Text(
                        'Login',
                        style: GoogleFonts.acme(
                          fontSize: 17,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 66, 196, 219),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      Get.to(Signup());
                      // Get.offAll(Home());
                    },
                    child: Container(
                      width: 70,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.acme(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 196, 219),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
