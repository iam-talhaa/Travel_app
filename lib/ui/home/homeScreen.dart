import 'package:flutter/material.dart';
import 'package:travel_app_ui/Res/Custom_color.dart';
import 'package:travel_app_ui/ui/home/informtion_screen.dart';

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
  final List<String> recommend_image_path = [
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

  List<String> location_names = [
    'Angkor-Wat-Cambodia',
    'Bagan-Myanmar',
    'Barcelona-Spain',
    'Chittorgarh_fort',
    'Giza-Egypt',
    'Great-Ocean-Aust',
    'Huacachina-Peru',
    'Kuang-Si-Falls-',
    'Li-River-China',
    'Maldives',
    'Meteora-Greece',
    'Pamukkale-Turkey',
    'Petra-Jordan',
    'Reine-Norway',
    'Salar-de-Uyuni-',
    'splash_p',
    'St-Lucia',
    'Taj-Mahal-Agra',
    'Tianzi-China',
    'Torres-del-Paine',
    'Venice-Italy',
    'Yellowstone--USA',
    'Zhangye-Danxia-China',
  ];

  List<String> locations_Intro = [
    "Angkor Wat, Cambodia  The largest religious monument in the world, Angkor Wat is a stunning temple complex built in the 12th century by the Khmer Empire. It is known for its intricate carvings and grand architectural design.",
    "Bagan, Myanmar  An ancient city filled with thousands of Buddhist temples, pagodas, and stupas, Bagan offers breathtaking sunrise and sunset views over its vast archaeological landscape.",
    "Barcelona, Spain  A vibrant city known for its rich culture, stunning architecture by Antoni Gaudí (like the Sagrada Familia), and beautiful Mediterranean beaches.",
    "Chittorgarh Fort, India  One of the largest forts in India, Chittorgarh Fort symbolizes Rajput bravery and history. It is home to magnificent palaces, towers, and temples.",
    "Giza, Egypt  Famous for the Great Pyramids and the Sphinx, Giza is a historical treasure showcasing the architectural and engineering marvels of ancient Egypt.",
    "Great Ocean Road, Australia  A scenic coastal drive in Australia, home to the iconic Twelve Apostles, limestone rock formations rising dramatically from the Southern Ocean.",
    "Huacachina, Peru  A picturesque desert oasis surrounded by sand dunes, Huacachina is popular for sandboarding, dune buggy rides, and its beautiful lagoon.",
    "Kuang Si Falls, Laos  A stunning three-tiered waterfall near Luang Prabang, known for its turquoise pools and lush jungle surroundings.",
    "Li River, China  A breathtaking river famous for its dramatic karst mountain landscapes, often depicted in traditional Chinese paintings.",
    "Maldives  A tropical paradise consisting of over 1,000 coral islands, known for its luxurious resorts, crystal-clear waters, and vibrant marine life.",
    "Meteora, Greece  A UNESCO World Heritage site featuring ancient monasteries perched atop towering rock pillars, offering stunning views and a serene atmosphere.",
    "Pamukkale, Turkey  A natural wonder famous for its white travertine terraces filled with thermal waters, often called the “Cotton Castle.”",
    "Petra, Jordan  The famous 'Rose City,' carved into red sandstone cliffs, is an ancient Nabatean city known for its iconic structure, Al-Khazneh (The Treasury).",
    "Reine, Norway  A picturesque fishing village in the Lofoten Islands, Reine is known for its stunning Arctic landscapes, dramatic peaks, and northern lights.",
    "Salar de Uyuni, Bolivia  The world s largest salt flat, which creates a mirror-like effect when covered with water, offering one of the most surreal landscapes on Earth.",
    "St. Lucia  A Caribbean island known for its lush rainforests, volcanic beaches, and the iconic Piton mountains.",
    "Taj Mahal, Agra, India  A UNESCO World Heritage site and one of the most beautiful architectural masterpieces, the Taj Mahal is a white marble mausoleum built by Mughal Emperor Shah Jahan in memory of his wife.",
    "Tianzi Mountains, China  A stunning mountain range with towering sandstone peaks, often enveloped in mist, inspiring the floating mountains in Avatar.",
    "Torres del Paine, Chile  A national park in Patagonia known for its rugged mountains, glaciers, and breathtaking hiking trails.",
    "Venice, Italy  The romantic 'Floating City' known for its canals, gondolas, historical landmarks, and stunning architecture.",
    "Yellowstone National Park, USA  Americas first national park, famous for its geysers, hot springs, wildlife, and the famous Old Faithful geyser.",
    "Zhangye Danxia, China  Known as the 'Rainbow Mountains,' this geological wonder features colorful, layered rock formations created over millions of years.",
  ];

  List<String> recommend_location_names = [
    'Pamukkale-Turkey',
    'Petra-Jordan',
    'Reine-Norway',
    'Salar-de-Uyuni-',
    'splash_p',
    'St-Lucia',
    'Taj-Mahal-Agra',
    'Tianzi-China',
    'Torres-del-Paine',
    'Venice-Italy',
    'Yellowstone--USA',
    'Zhangye-Danxia-China',
  ];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    print("Updated");
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
                    fontSize: 30,
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
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
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imagePaths.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: GestureDetector(
                            onTap: () {
                              print("Home SCreen");
                              print("Home SCreen");
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Information_screen(
                                        Image: imagePaths[index],
                                        String: location_names[index],
                                        Intro: locations_Intro[index],
                                      )));
                            },
                            child: Container(
                              height: 130,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        imagePaths[index].toString())),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Container(
                                        height: 20,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: Center(
                                          child: Text(
                                              location_names[index].toString()),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ));
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Recommended",
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recommend_location_names.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      recommend_image_path[index].toString())),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Container(
                                      height: 20,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(18)),
                                      child: Center(
                                        child: Text(
                                            recommend_location_names[index]
                                                .toString()),
                                      )),
                                )
                              ],
                            ),
                          ));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
