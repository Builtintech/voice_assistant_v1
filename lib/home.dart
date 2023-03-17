import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.work_outline_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Container(
                  height: 70,
                  width: 380,
                  child: Center(
                    child: Text(
                      'Plans',
                      style: GoogleFonts.acme(),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 189, 164, 164),
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                width: 380,
                child: Center(
                  child: Text(
                    'Plans',
                    style: GoogleFonts.acme(),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 189, 164, 164),
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                width: 380,
                child: Center(
                  child: Text(
                    'Find my family',
                    style: GoogleFonts.acme(),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 189, 164, 164),
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
