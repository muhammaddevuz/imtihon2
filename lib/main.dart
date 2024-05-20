import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imtihon2/pages/book_appoinment.dart';
import 'package:imtihon2/pages/detail_barber_page.dart';
import 'package:imtihon2/pages/home_page.dart';
import 'package:imtihon2/pages/last_page.dart';
import 'package:imtihon2/pages/login_page.dart';
import 'package:imtihon2/pages/pay_page.dart';
import 'package:imtihon2/pages/signup_page.dart';
import 'package:imtihon2/pages/slide_pages.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(450, 900),
      child: MaterialApp(
        routes: {
          "/slide": (context) => const SlidePage(),
          "/login": (context) => const LoginPage(),
          "/signup": (context) => const SignupPage(),
          "/home": (context) => const HomePage(),
          "/detail": (context) => const DetailBarber(),
          "/book": (context) => const BookAppoinment(),
          "/pay": (context) => const PayPage(),
          "/last": (context) => const LastPage(),
        },
        debugShowCheckedModeBanner: false,
        home:const FirstPage(),
      ),
    );
  }
}
