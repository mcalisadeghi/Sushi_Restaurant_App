import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/btn.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        138,
        60,
        55,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          25.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            // shop name
            Text(
              'SUSI MAN',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // icon
            Padding(
              padding: const EdgeInsets.all(
                50.0,
              ),
              child: Image.asset(
                'assets/images/pic1.png',
                height: 178,
              ),
            ),

            // title
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // subtitle
            const Text(
              'Fell the tat of the most popular Iranan food from anywhere and anytime',
              style: TextStyle(
                color: Colors.grey, //[200],
                height: 2,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // get started button
            const MyBtn(
              text: 'Get Start',
            ),
          ],
        ),
      ),
    );
  }
}
