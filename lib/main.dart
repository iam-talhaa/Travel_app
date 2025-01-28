import 'package:flutter/material.dart';
import 'package:travel_app_ui/splashscreen/splash_screen.dart';

void main() {
  runApp(Travel_app());
}

class Travel_app extends StatefulWidget {
  const Travel_app({super.key});

  @override
  State<Travel_app> createState() => _Travel_appState();
}

class _Travel_appState extends State<Travel_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_screen(),
    );
  }
}
