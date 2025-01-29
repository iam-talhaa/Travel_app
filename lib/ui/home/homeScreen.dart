import 'package:flutter/material.dart';
import 'package:travel_app_ui/Res/Custom_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> Scroll = [
    'Location',
    'Hotel',
    'Food',
    'Adventure',
    'Resourt',
    'Park',
    'WaterFall'
  ];

  final List<String> imagePaths = [
    'Assets/Angkor-Wat-Cambodia.jpg',
    'Assets/Bagan-Myanmar.jpg',
    'Assets/Barcelona-Spain.jpg',
    'Assets/Chittorgarh_fort.jpg',
    'Assets/Giza-Egypt.jpg',
    'Assets/Great-Ocean-Road-Australia.jpg',
    'Assets/Huacachina-Peru.jpg',
    'Assets/Kuang-Si-Falls-Luang-Prabang-Laos.jpg',
    'Assets/Li-River-China.jpg',
    'Assets/Maldives.jpeg',
    'Assets/Meteora-Greece.jpg',
    'Assets/Pamukkale-Turkey.jpg',
    'Assets/Petra-Jordan.jpg',
    'Assets/Reine-Norway.jpg',
    'Assets/Salar-de-Uyuni-Bolivia.jpg',
    'Assets/splash_p.png',
    'Assets/St-Lucia.jpg',
    'Assets/Taj-Mahal-Agra.jpeg',
    'Assets/Tianzi-Mountains-China.jpg',
    'Assets/Torres-del-Paine-National-Park-Patagonia-Chile.jpg',
    'Assets/Venice-Italy.jpg',
    'Assets/Yellowstone-National-Park-Wyoming-USA.jpg',
    'Assets/Zhangye-Danxia-National-Geological-Park-in-China.jpg',
  ];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 16,
                        color: Colors.blue,
                      ),
                      Text('Aspen, USA'),
                      Icon(
                        Icons.arrow_drop_down,
                        color: blackColor,
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text(
                  "Aspen",
                  style: TextStyle(
                      fontSize: 32,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-VariableFont_wght'),
                ),
              ),
              TextFormField(
                  style: TextStyle(color: blueColor),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,
                          color: Colors.black.withOpacity(0.4)),
                      fillColor:
                          Color.fromARGB(157, 179, 198, 216).withOpacity(0.5),
                      filled: true,
                      hintText: "Find Thing to Do",
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.4)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(157, 179, 198, 216)
                                  .withOpacity(0.5),
                              style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(18)))),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Scroll.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: isSelected
                                      ? Colors.grey.withOpacity(0.3)
                                      : null,
                                  borderRadius: isSelected
                                      ? BorderRadius.circular(18)
                                      : null),
                              height: 30,
                              width: 70,
                              child: Center(
                                  child: Text(
                                Scroll[index].toString(),
                                style: TextStyle(
                                    fontWeight:
                                        isSelected ? FontWeight.bold : null,
                                    color: isSelected == true
                                        ? Colors.blue
                                        : Colors.black),
                              )),
                            ));
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Popular",
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(color: blueColor),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 130,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(imagePaths[index].toString())),
                            ),
                          ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
