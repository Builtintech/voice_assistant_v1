import 'package:flutter/material.dart';

class Schedules extends StatelessWidget {
  const Schedules({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 230, 230, 230),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(1),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "LOCATIONS",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text('Arun  Mehdipatnam, Hyderabad',
                    style: TextStyle(color: Color.fromARGB(255, 86, 88, 88))),
                const SizedBox(height: 10),
                const Text('Vamsi Kukatpally, Hyderabad',
                    style: TextStyle(color: Color.fromARGB(255, 86, 88, 88))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
