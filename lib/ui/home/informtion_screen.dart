import 'package:flutter/material.dart';
import 'package:travel_app_ui/Res/Custom_color.dart';
import 'package:travel_app_ui/custom_widgets/C_button.dart';
import 'package:travel_app_ui/ui/home/purchase_screen.dart';

class Information_screen extends StatefulWidget {
  final Image;
  final String;
  final Intro;
  const Information_screen(
      {super.key,
      required this.Image,
      required this.String,
      required this.Intro});

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.grey,
                          ),
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.String,
                    style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    'Show map',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffDF9652),
                  ),
                  Text(
                    '4.5 (355 Reviews)',
                    style: TextStyle(color: Colors.grey.withOpacity(1)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                widget.Intro,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Text(
                    'Show map',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: blueColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                "Facilities",
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(255, 38, 102, 197)
                          .withOpacity(0.6)),
                  child: Icon(
                    Icons.wifi,
                    size: 33,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(255, 38, 102, 197)
                          .withOpacity(0.6)),
                  child: Icon(
                    Icons.fastfood,
                    size: 33,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(255, 38, 102, 197)
                          .withOpacity(0.6)),
                  child: Icon(
                    Icons.pool,
                    size: 33,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(255, 38, 102, 197)
                          .withOpacity(0.6)),
                  child: Icon(
                    Icons.hot_tub,
                    size: 33,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " \$199",
                    style: TextStyle(
                        color: greenColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Custom_button(
                      color: blueColor,
                      b_height: 45.0,
                      ontap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Purchase_screen()));
                      },
                      text: 'Book Now ->',
                      b_width: 200.0)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
