import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/utils/data.dart';
import 'package:imtihon2/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 180,
        leading: const Row(
          children: [
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0xff363062)),
                    Text(
                      "Yogyakarta",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)),
                    )
                  ],
                ),
                Text(
                  "Joe Samanta",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
        actions: [
          Container(
            height: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "assets/profile.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    image: const DecorationImage(
                        image: AssetImage("assets/fon.png"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -15,
                      right: -60,
                      child: SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset("assets/barber3.png")),
                    ),
                    Positioned(
                        left: 15,
                        top: 15,
                        child: Container(
                          height: 90,
                          width: 90,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 226, 186, 137)),
                          child: Image.asset("assets/logo.png"),
                        )),
                    Positioned(
                        bottom: 15,
                        left: 15,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/detail");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff363062)),
                            padding: const EdgeInsets.all(15),
                            child: const Text(
                              "Booking Now",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      flex: 12,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffEBF0F5)),
                        padding: const EdgeInsets.only(
                            left: 20, top: 15, bottom: 15),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.search,
                              color: Color(0xff8683A1),
                              size: 30,
                            ),
                            Text(
                              "  Search barber's, haircut service...",
                              style: TextStyle(
                                  fontSize: width < 400 ? 12 : 14,
                                  color: const Color(0xff8683A1),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      )),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff363062)),
                        padding: const EdgeInsets.all(5),
                        child: IconButton(
                          onPressed: () {
                            modal(context);
                          },
                          icon: const Icon(
                            Icons.tune,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                "Nearest Babershop ",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff363062)),
              ),
              const SizedBox(height: 15),
              for (var i = 0; i < barberShops.length; i++)
                location1(i, width, context),
              seeAll(),
              const SizedBox(height: 20),
              const Text(
                "Most recommended",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff363062)),
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/barber.png"),
                        fit: BoxFit.cover)),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/detail");
                          },
                          child: Container(
                            width: 140,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20)),
                                color: Color(0xff363062)),
                            padding: const EdgeInsets.all(20),
                            child: const Row(
                              children: [
                                Text("See All  ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Master piece Barbershop - Haircut styling",
                style: TextStyle(
                    fontSize: width < 400 ? 18 : 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.location_on, color: Color(0xff8683A1)),
                  Text(
                    " Joga Expo Centre  (2 km)",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8683A1)),
                  )
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.star, color: Color(0xff8683A1)),
                  Text(
                    " 5.0",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8683A1)),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    radius: 5,
                  ),
                  const SizedBox(width: 5),
                  const CircleAvatar(
                    radius: 5,
                  ),
                  const SizedBox(width: 5),
                  const CircleAvatar(
                    radius: 5,
                  ),
                  const SizedBox(width: 5),
                  const CircleAvatar(
                    radius: 5,
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 40,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff363062)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              for (var i = 0; i < barberShops.length; i++)
                locatons2(i, width, context),
              seeAll(),
              const SizedBox(height: 15),
              const Text(
                "Find a barber nearby",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff363062)),
              ),
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/map.png"),
                        fit: BoxFit.cover)),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 160,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20)),
                              color: Color(0xff363062)),
                          padding: const EdgeInsets.all(20),
                          child: const Row(
                            children: [
                              Text("Find now  ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.home, color: Color(0xff363062), size: 35),
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Color(0xff363062)),
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.calendar_month, color: Colors.grey, size: 35),
                Text(
                  "Booking",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.chat_bubble, color: Colors.grey, size: 35),
                Text(
                  "Chat",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Colors.grey),
                )
              ],
            ),
            Column(
              children: [
                Icon(Icons.person, color: Colors.grey, size: 35),
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
