import 'package:assistant/Auth/OTP.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  static String verify = '';

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _number = TextEditingController();

    Phoneauth() async {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91 99######03',
        verificationCompleted: (PhoneAuthCredential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          PhoneAuth.verify = verificationId;
          Get.offAll(OTP());
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Container(
                  child: Text(
                    'Verify YourSelf',
                    style: GoogleFonts.acme(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 200,
                          child: SvgPicture.asset('assets/images/login.svg')),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _number,
                      decoration: InputDecoration(
                        labelText: "Enter your number",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Phoneauth();
                          },
                          child: Text("Get OTP"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 47, 162, 185))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
