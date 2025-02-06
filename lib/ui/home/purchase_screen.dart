import 'package:flutter/material.dart';
import 'package:travel_app_ui/Res/Custom_color.dart';
import 'package:travel_app_ui/custom_widgets/C_button.dart';
import 'package:travel_app_ui/ui/home/ConfirmationScreen.dart';

class Purchase_screen extends StatefulWidget {
  const Purchase_screen({super.key});

  @override
  State<Purchase_screen> createState() => _Purchase_screenState();
}

class _Purchase_screenState extends State<Purchase_screen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _atm_Controller = TextEditingController();
  TextEditingController _zipCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 93, 161, 225),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Enter Your Detail',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'LuckiestGuy'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "Enter Full Name",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(14))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _destinationController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            hintText: "Distination Address",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(14))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _locationController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city_outlined),
                            hintText: "Your Location",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(14))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _zipCodeController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.numbers),
                            hintText: "zip code",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(14))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _atm_Controller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.atm_outlined),
                            hintText: "0000 - 0000 - 0000 - 0000",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(14))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Custom_button(
                          color: blueColor,
                          b_height: 45.0,
                          ontap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Confirmationscreen()));
                          },
                          text: "Check Out",
                          b_width: 200.0)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
