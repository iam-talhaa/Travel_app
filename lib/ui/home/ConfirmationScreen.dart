import 'package:flutter/material.dart';
import 'package:travel_app_ui/splash_services/splash_services.dart';

class Confirmationscreen extends StatefulWidget {
  const Confirmationscreen({super.key});

  @override
  State<Confirmationscreen> createState() => _ConfirmationscreenState();
}

class _ConfirmationscreenState extends State<Confirmationscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SplashServices splashServices = SplashServices();

    splashServices.Goto_HomeScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 93, 161, 225),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 100,
                    ),
                    Text(
                      "Booking Successfull",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text("Thank You For Availing Our Service")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
