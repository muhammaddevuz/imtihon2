import 'package:flutter/material.dart';

bool aboutChek = true;
bool serviseChek = false;
bool scheduleChek = false;

bool loginEyeCheck = true;
bool signupEyeCheck1 = true;
bool signupEyeCheck2 = true;
List accounts = [
  {"login": "muhammad@gmail.com", "password": "muhammad"}
];

List barberShops = [
  {
    "image": Image.asset("assets/i1.png"),
    "text1": "Varcity Barbershop Jogja ex The Varcher",
    "locate": "Condongcatur (10 km)",
    "rating": "4.5"
  },
  {
    "image": Image.asset("assets/i2.png"),
    "text1": "Hercha Barbershop - Haircut & Styling",
    "locate": "Jalan Kaliurang (8 km)",
    "rating": "5.0"
  },
  {
    "image": Image.asset("assets/i3.png"),
    "text1": "Barberking - Haircut styling & massage",
    "locate": "Jogja Expo Centre (12 km)",
    "rating": "4.5"
  },
];

List barberShops2 = [
  {
    "image": Image.asset("assets/i4.png"),
    "text1": "Varcity Barbershop Jogja ex The Varcher",
    "locate": "Condongcatur (10 km)",
    "rating": "4.5"
  },
  {
    "image": Image.asset("assets/i5.png"),
    "text1": "Hercha Barbershop - Haircut & Styling",
    "locate": "Jl Taman Siswa (8 km)",
    "rating": "5.0"
  },
  {
    "image": Image.asset("assets/i6.png"),
    "text1": "Barberking - Haircut styling & massage",
    "locate": "J-Walk Centre  (17 km)",
    "rating": "4.5"
  },
];

List categorys = [
  {"category_name": "Basic haircut", "choose_check": true},
  {"category_name": "Coloring", "choose_check": false},
  {"category_name": "Treatment", "choose_check": false},
  {"category_name": "Massage", "choose_check": true},
  {"category_name": "Kids haircut", "choose_check": false},
];

List worker = [
  {
    "image": Image.asset("assets/worker1.png"),
    "name": "Luther Hammes",
    "specialty": "Specialist Haircut",
    "rating": "5.0"
  },
  {
    "image": Image.asset("assets/worker2.png"),
    "name": "Emanuel Bernier",
    "specialty": "Specialist Coloring",
    "rating": "4.5"
  },
  {
    "image": Image.asset("assets/worker3.png"),
    "name": "Karl Vandervort",
    "specialty": "Specialist Treatment",
    "rating": "4.5"
  },
];
List ourService = [
  {
    "image": Image.asset("assets/service1.png"),
    "title": "Basic haircut",
    "title2": "Basic haircut & vitamint",
    "price": "\$20"
  },
  {
    "image": Image.asset("assets/service2.png"),
    "title": "Kids haircut",
    "title2": "Special kids haircut",
    "price": "\$15"
  },
  {
    "image": Image.asset("assets/service3.png"),
    "title": "Hair coloring",
    "title2": "Hair color treatment",
    "price": "\$30"
  },
  {
    "image": Image.asset("assets/service4.png"),
    "title": "Hair treatment",
    "title2": "Special full treatment",
    "price": "\$10"
  },
  {
    "image": Image.asset("assets/service5.png"),
    "title": "Special massage",
    "title2": "Additional massage",
    "price": "\$10"
  },
];
List ourServiceChoose = [
  {
    "image": const AssetImage("assets/service1.png"),
    "title": "Basic haircut",
    "title2": "Basic haircut & vitamint",
    "price": 20,
    "check": true
  },
  {
    "image": const AssetImage("assets/service2.png"),
    "title": "Kids haircut",
    "title2": "Special kids haircut",
    "price": 15,
    "check": false
  },
  {
    "image": const AssetImage("assets/service3.png"),
    "title": "Hair coloring",
    "title2": "Hair color treatment",
    "price": 30,
    "check": false
  },
  {
    "image": const AssetImage("assets/service4.png"),
    "title": "Hair treatment",
    "title2": "Special full treatment",
    "price": 20,
    "check": false
  },
  {
    "image": const AssetImage("assets/service5.png"),
    "title": "Special massage",
    "title2": "Additional massage",
    "price": 10,
    "check": false
  },
];

int calendarYear = DateTime.now().year;
int monthIndex = 0;
List month = [
  "Yanvar",
  "Fevral",
  "Mart",
  "Aprel",
  "May",
  "Iyun",
  "Iyul",
  "Avgust",
  "Sentabr",
  "Oktabr",
  "Noyabr",
  "Dekabr",
];

List time = [
  {'time': "08:00", "check": 2},
  {'time': "08:30", "check": 1},
  {'time': "09:00", "check": 3},
  {'time': "09:30", "check": 1},
  {'time': "10:00", "check": 1},
  {'time': "10:30", "check": 1},
  {'time': "11:30", "check": 1},
  {'time': "13:00", "check": 1},
  {'time': "15:30", "check": 1},
  {'time': "16:00", "check": 3},
  {'time': "17:00", "check": 1},
  {'time': "17:30", "check": 1},
];

DateTime? bookingDate;

String bronDate = '';
num totalPrice = 20;
