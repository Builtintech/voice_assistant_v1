import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final _name = TextEditingController();
    final _email = TextEditingController();
    final _password = TextEditingController();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200.0, left: 17, right: 17),
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: _name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Name',
                    // labelText: 'Name',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
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
                height: 37,
              ),
              Container(
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
              SizedBox(
                height: 20,
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
