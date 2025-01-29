import 'package:flutter/material.dart';
import 'package:travel_app_ui/custom_widgets/C_button.dart';
import 'package:travel_app_ui/ui/home/homeScreen.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Aspen ",
                style: TextStyle(
                    fontFamily: 'LuckiestGuy',
                    fontSize: 80,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Plan Your",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Luxurious \nVacation",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat-VariableFont_wght'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Custom_button(
                  color: Colors.blue,
                  b_height: 45.0,
                  ontap: () {
                    print("Press");
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  text: "Explore",
                  b_width: 180.0),
            )
          ],
        ),
      ),
    );
  }
}
