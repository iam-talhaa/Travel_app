import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('Assets/splash_p.png')),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "Aspen ",
              style: TextStyle(
                  fontFamily: 'LuckiestGuy', fontSize: 80, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
