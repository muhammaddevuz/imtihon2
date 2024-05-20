import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/utils/data.dart';

class DetailBarber extends StatefulWidget {
  const DetailBarber({super.key});

  @override
  State<DetailBarber> createState() => _DetailBarberState();
}

class _DetailBarberState extends State<DetailBarber> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Color(0xff111827),
          ),
        ),
        title: const Text(
          "Detail Barber",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff111827)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
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
                            top: 0,
                            right: 0,
                            child: Container(
                              // width: 140,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20)),
                                  color: Color(0xff27AE60)),
                              padding:
                                  const EdgeInsets.fromLTRB(15, 10, 15, 10),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Open",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Master piece Barbershop - Haircut styling",
                    style: TextStyle(
                        fontSize: width < 400 ? 18 : 21,
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            SizedBox(
                              width: 25,
                              child: Image.asset("assets/google_maps.png"),
                            ),
                            const Text(
                              "Maps",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff363062)),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Column(
                          children: [
                            Icon(
                              CupertinoIcons.chat_bubble_fill,
                              size: 35,
                              color: Color(0xff363062),
                            ),
                            Text(
                              "Chat",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff363062)),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Column(
                          children: [
                            Icon(
                              Icons.share,
                              size: 35,
                              color: Color(0xff363062),
                            ),
                            Text(
                              "Share",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff363062)),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Column(
                          children: [
                            Icon(
                              CupertinoIcons.heart_fill,
                              size: 35,
                              color: Color(0xffF43F5E),
                            ),
                            Text(
                              "Favorite",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff363062)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 90,
              color: const Color(0xffEDEFFB),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 18, 12, 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          aboutChek = true;
                          serviseChek = false;
                          scheduleChek = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: aboutChek
                                ? Border.all(color: const Color(0xff363062), width: 3)
                                : null),
                        padding: const EdgeInsets.fromLTRB(10, 12, 10, 14),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_pin_circle_rounded,
                              color: aboutChek
                                  ? const Color(0xff363062)
                                  : const Color(0xff8683A1),
                              size: 30,
                            ),
                            Text(
                              "About",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: aboutChek
                                      ? const Color(0xff363062)
                                      : const Color(0xff8683A1)),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          aboutChek = false;
                          serviseChek = true;
                          scheduleChek = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: serviseChek
                                ? Border.all(color: const Color(0xff363062), width: 3)
                                : null),
                        padding: const EdgeInsets.fromLTRB(10, 12, 10, 14),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.scissors_alt,
                              color: serviseChek
                                  ? const Color(0xff363062)
                                  : const Color(0xff8683A1),
                              size: 30,
                            ),
                            Text(
                              "Service",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: serviseChek
                                      ? const Color(0xff363062)
                                      : const Color(0xff8683A1)),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          aboutChek = false;
                          serviseChek = false;
                          scheduleChek = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: scheduleChek
                                ? Border.all(color: const Color(0xff363062), width: 3)
                                : null),
                        padding: const EdgeInsets.fromLTRB(10, 12, 10, 14),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.calendar_today,
                              color: scheduleChek
                                  ? const Color(0xff363062)
                                  : const Color(0xff8683A1),
                              size: 30,
                            ),
                            Text(
                              "Schedule",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: scheduleChek
                                      ? const Color(0xff363062)
                                      : const Color(0xff8683A1)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            aboutChek
                ? about(width)
                : serviseChek
                    ? service()
                    : scheduele()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/book");
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff363062),
            ),
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: const Text(
              "Booking Now",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

Widget about(double width) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "At Masterpiece Barbershop, our dedicated team" +
                " of skilled barbers are true artists in" +
                " their craft, transforming your hair,",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width > 400 ? 19 : 17,
                color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' Read more...',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width > 400 ? 19 : 17,
                    decoration: TextDecoration.underline,
                    color: Colors.grey[700]),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Opening Hours",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Monday - friday",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6B7280)),
            ),
            Text(
              "09.00  am - 08.00 pm ",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff111827)),
            )
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Saturday - Sunday",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6B7280)),
            ),
            Text(
              "09.00  am - 09.00 pm ",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff111827)),
            )
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Our Team",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 20),
        for (var i = 0; i < worker.length; i++)
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        clipBehavior: Clip.hardEdge,
                        child: worker[i]['image'],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            worker[i]['name'],
                            style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff111827)),
                          ),
                          Text(
                            worker[i]['specialty'],
                            style: const TextStyle(
                                height: 1,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6B7280)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: Color(0xff6B7280),
                      ),
                      Text(
                        worker[i]['rating'],
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6B7280)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          )
      ],
    ),
  );
}

Widget service() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Our Service",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 20),
        for (var i = 0; i < ourService.length; i++)
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        clipBehavior: Clip.hardEdge,
                        child: ourService[i]['image'],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ourService[i]['title'],
                            style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff111827)),
                          ),
                          Text(
                            ourService[i]['title2'],
                            style: const TextStyle(
                                height: 1,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6B7280)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    ourService[i]['price'],
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff111827)),
                  )
                ],
              ),
              const SizedBox(height: 30),
            ],
          )
      ],
    ),
  );
}

Widget scheduele() {
  return const Column();
}
