import 'package:flutter/material.dart';
import 'package:travel_app_ui/Res/Custom_color.dart';

class Information_screen extends StatefulWidget {
  final Image;
  const Information_screen({super.key, required this.Image});

  @override
  State<Information_screen> createState() => _Information_screenState();
}

class _Information_screenState extends State<Information_screen> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(widget.Image))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 280, bottom: 12),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            fav = !fav;
                          });
                        },
                        child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              fav
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: fav ? Colors.red : Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
