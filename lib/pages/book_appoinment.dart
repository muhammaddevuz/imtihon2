import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/utils/data.dart';
import 'package:imtihon2/widgets/widgets.dart';

class BookAppoinment extends StatefulWidget {
  const BookAppoinment({super.key});

  @override
  State<BookAppoinment> createState() => _BookAppoinmentState();
}

class _BookAppoinmentState extends State<BookAppoinment> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/detail");
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Color(0xff111827),
          ),
        ),
        title: const Text(
          "Book Apponment",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff111827)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Choose date",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffEDEFFB)),
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (calendarYear == 2024 && monthIndex == 0) {
                                } else if (monthIndex == 0) {
                                  calendarYear--;
                                  monthIndex = 11;
                                } else {
                                  monthIndex--;
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                            )),
                        InkWell(
                            onTap: () async {
                              bookingDate = await showDatePicker(
                                  context: context,
                                  initialDate:
                                      DateTime(calendarYear, monthIndex + 1, 1),
                                  firstDate:
                                      DateTime(calendarYear, monthIndex + 1, 1),
                                  lastDate: DateTime(
                                      calendarYear, monthIndex + 1, 31));
                            },
                            child: Text(
                              "${month[monthIndex]} $calendarYear",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff111827)),
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (calendarYear == 2025 && monthIndex == 11) {
                                } else if (monthIndex == 11) {
                                  calendarYear++;
                                  monthIndex = 0;
                                } else {
                                  monthIndex++;
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 30,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Choose Service",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < ourServiceChoose.length; i++)
                    chooseStyle(i)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Available time",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 12,
                    runSpacing: 15,
                    children: [
                      for (var i = 0; i < time.length; i++) timeButton(i, width)
                    ],
                  ),
                  const SizedBox(height: 15),
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
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
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
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: InkWell(
          onTap: () {
            setState(() {
              String box = '';
              for (var element in time) {
                if (element['check'] == 2) {
                  box = element['time'];
                }
              }
              if (bookingDate == null) {
                bronDate =
                    '${DateTime.now().day} ${month[DateTime.now().month - 1]} - $box';
              } else {
                bronDate =
                    '${bookingDate!.day} ${month[bookingDate!.month - 1]} - $box';
              }

              for (var element in ourServiceChoose) {
                if (element['check']) {
                  totalPrice += element['price'];
                }
              }
            });

            Navigator.pushNamed(context, "/pay");
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
                  "Deal booking",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(width: 10),
                Icon(
                  CupertinoIcons.calendar_today,
                  size: 35,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget timeButton(int i, double width) {
    return InkWell(
      onTap: () {
        setState(() {
          if (time[i]['check'] == 3) {
            return;
          }
          for (var j = 0; j < time.length; j++) {
            if (j == i) {
              time[i]['check'] = 2;
            } else if (time[j]['check'] == 2) {
              time[j]['check'] = 1;
            }
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: time[i]['check'] == 2 ? const Color(0xffD7D6E0) : null,
            border: time[i]['check'] == 3
                ? Border.all(color: const Color(0xffD7D6E0), width: 3)
                : Border.all(color: const Color(0xff363062), width: 3)),
        padding: width > 400
            ? const EdgeInsets.fromLTRB(14, 8, 14, 8)
            : const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: Text(
          time[i]['time'],
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: time[i]['check'] == 3
                  ? const Color(0xffD7D6E0)
                  : const Color(0xff363062)),
        ),
      ),
    );
  }

  Widget chooseStyle(int i) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  ourServiceChoose[i]['check'] = !ourServiceChoose[i]['check'];
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:
                          DecorationImage(image: ourServiceChoose[i]['image'])),
                  clipBehavior: Clip.hardEdge,
                  child: ourServiceChoose[i]['check']
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 50,
                              )
                            ],
                          ),
                        )
                      : const Padding(padding: EdgeInsets.all(35))),
            ),
            Text(
              ourServiceChoose[i]['title'],
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff111827)),
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
        const SizedBox(width: 10)
      ],
    );
  }
}
