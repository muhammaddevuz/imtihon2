import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/utils/data.dart';

Widget locatons2(int i, double width, BuildContext context) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/detail");
        },
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: barberShops2[i]['image'],
                )),
            const SizedBox(width: 8),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      barberShops2[i]['text1'],
                      style: TextStyle(
                          fontSize: width < 400 ? 18 : 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Color(0xff8683A1)),
                        Text(
                          barberShops2[i]['locate'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8683A1)),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Color(0xff8683A1)),
                        Text(
                          barberShops2[i]['rating'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8683A1)),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

Widget location1(int i, double width, BuildContext context) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/detail");
        },
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: barberShops[i]['image'],
                )),
            const SizedBox(width: 8),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      barberShops[i]['text1'],
                      style: TextStyle(
                          fontSize: width < 400 ? 18 : 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Color(0xff8683A1)),
                        Text(
                          barberShops[i]['locate'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8683A1)),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Color(0xff8683A1)),
                        Text(
                          barberShops[i]['rating'],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff8683A1)),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

Widget seeAll() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xff363062), width: 3)),
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
        child: Row(
          children: [
            const Text("See All  ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xff363062), width: 3)),
              child: const Icon(Icons.arrow_outward_rounded),
            )
          ],
        ),
      )
    ],
  );
}

modal(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
          height: 550,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.grey),
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  "?",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            "Filter",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Icon(
                        CupertinoIcons.clear_fill,
                        color: Colors.grey[600],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "General Category",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff111827)),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 15,
                        runSpacing: 10,
                        children: [
                          for (var i = 0; i < categorys.length; i++)
                            category(categorys[i]['category_name'],
                                categorys[i]['choose_check'])
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Rating Barber",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff111827)),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Text(
                            "(4.0)",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff363062)),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: 220 / 5 * 4,
                            height: 6,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                          ),
                          Container(
                            width: 220 / 5,
                            height: 6,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 204, 202, 202),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Distance",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff111827)),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "Nearest",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: const Color(0xff363062),
                                            width: 3)),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text(
                                      "0.1",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff363062)),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "km",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff363062)),
                              ),
                            ],
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "—",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff363062)),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "Farther",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: const Color(0xff363062),
                                            width: 3)),
                                    padding: const EdgeInsets.all(10),
                                    child: const Text(
                                      "10",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff363062)),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "km",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff363062)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/detail");
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff363062),
                          ),
                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                          child: const Text(
                            "Apply",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ));
    },
  );
}

Widget category(String text, bool chooseCheck) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: chooseCheck
            ? Border.all(width: 3, color: const Color(0xff363062))
            : null,
        color: chooseCheck ? const Color(0xffEDEFFB) : null),
    padding: const EdgeInsets.all(5),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: chooseCheck ? const Color(0xff363062) : Colors.grey),
    ),
  );
}

Widget allPrice(int i) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ourServiceChoose[i]["title"],
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff111827)),
          ),
          Text(
            "\$${ourServiceChoose[i]["price"]}",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff111827)),
          ),
        ],
      ),
      const SizedBox(height: 15),
    ],
  );
}

Widget serviceList(int i) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: ourServiceChoose[i]['image'])),
                clipBehavior: Clip.hardEdge,
                child: const SizedBox(
                  width: 60,
                  height: 60,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ourServiceChoose[i]['title'],
                    style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff111827)),
                  ),
                  Text(
                    ourServiceChoose[i]['title2'].toString(),
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
            "\$${ourServiceChoose[i]['price']}",
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff111827)),
          )
        ],
      ),
      const SizedBox(height: 10),
    ],
  );
}
