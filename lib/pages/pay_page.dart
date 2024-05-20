import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/utils/data.dart';
import 'package:imtihon2/widgets/widgets.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff363062),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 75,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/book");
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Your Appoinment",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1300,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("assets/fon.png"))),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  // ignore: use_full_hex_values_for_flutter_colors
                                  color: const Color(0xff56508299)),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.hardEdge,
                                    child: Image.asset(
                                      "assets/i1.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Master piece Barbershop...",
                                              style: TextStyle(
                                                  fontSize:
                                                      width < 400 ? 16 : 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(height: 10),
                                            const Row(
                                              children: [
                                                Icon(Icons.location_on,
                                                    color: Colors.white),
                                                Text(
                                                  "Jogja Expo Centre  (2 km)",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            const Row(
                                              children: [
                                                Icon(Icons.star,
                                                    color: Colors.white),
                                                Text(
                                                  "5.0 (24)",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 1100,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(CupertinoIcons.calendar_today, size: 30),
                          Text(
                            "Date & time",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        bronDate,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B7280)),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(CupertinoIcons.scissors_alt, size: 30),
                          Text(
                            "Service lits",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      for (var i = 0; i < ourServiceChoose.length; i++)
                        ourServiceChoose[i]['check']
                            ? serviceList(i)
                            : const SizedBox(),
                      const Text(
                        "Apply Coupon",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomLeft: Radius.circular(25),
                                    ),
                                    border: Border.all(
                                        color: Colors.grey, width: 1)),
                                padding: const EdgeInsets.all(20),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.percent,
                                      color: Color(0xff363062),
                                      size: 30,
                                    ),
                                    Text(
                                      "  DISC20PERCEN",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff363062)),
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                    ),
                                    color: Color(0xff363062)),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 23, 10, 23),
                                child: const Text(
                                  "Apply",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Coupon is active",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Payment summary",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 10),
                      for (var i = 0; i < ourServiceChoose.length; i++)
                        ourServiceChoose[i]['check']
                            ? allPrice(i)
                            : const SizedBox(),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Service fee",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827)),
                          ),
                          Text(
                            "\$25",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Coupon discount",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827)),
                          ),
                          Text(
                            "\$-5",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 2,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Total Price",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827)),
                          ),
                          Text(
                            "\$$totalPrice",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff111827)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/last");
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff363062),
              ),
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pay now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.payments_rounded,
                    size: 35,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
