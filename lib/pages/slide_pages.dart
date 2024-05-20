import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, "/slide");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff363062),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 130,
                // height: 142,
                child: Image.asset("assets/logo.png"),
              ),
            ],
          ),
        ));
  }
}

class SlidePage extends StatefulWidget {
  const SlidePage({super.key});

  @override
  State<SlidePage> createState() => _SlidePage();
}

class _SlidePage extends State<SlidePage> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                OnBoardingWidget(
                  text1: "assets/barber1.png",
                  text2: "Welcome Gobars",
                  index: 0,
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                OnBoardingWidget(
                  text1: "assets/barber2.png",
                  text2: "Looking for barber?",
                  index: 1,
                  onTap: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                OnBoardingWidget(
                  text1: "assets/barber3.png",
                  text2: "Eveything in your hands",
                  index: 2,
                  onTap: () {
                    Navigator.pushNamed(context, "/login");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class OnBoardingWidget extends StatelessWidget {
  String text1;
  String text2;
  final int index;
  final Function() onTap;

  OnBoardingWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: double.infinity,
            height: height > 880 ? height * 0.78 : height * 0.75,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage(text1), fit: BoxFit.cover)),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: height > 880
                ? height * 0.33
                : height < 800
                    ? height * 0.41
                    : height * 0.39,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              color: Color(0xffF99417),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text2,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  height > 880
                      ? const SizedBox(height: 20)
                      : const SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry." +
                        " Lorem Ipsum has been the industry's standard" +
                        " dummy text ever since the 1500s, when",
                    style: TextStyle(
                        fontSize: height > 850 ? 18 : 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  height > 880
                      ? const SizedBox(height: 20)
                      : const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      index == 0
                          ? Container(
                              width: 35,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: const Color(0xff363062)),
                            )
                          : const CircleAvatar(
                              radius: 5,
                            ),
                      const SizedBox(
                        width: 5,
                      ),
                      index == 1
                          ? Container(
                              width: 35,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: const Color(0xff363062)),
                            )
                          : const CircleAvatar(
                              radius: 5,
                            ),
                      const SizedBox(
                        width: 5,
                      ),
                      index == 2
                          ? Container(
                              width: 35,
                              height: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: const Color(0xff363062)),
                            )
                          : const CircleAvatar(
                              radius: 5,
                            ),
                    ],
                  ),
                  height > 880
                      ? const SizedBox(height: 10)
                      : const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: onTap,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            backgroundColor: const Color(0xff363062),
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 100, right: 100),
                            child: Text("Get Started"),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
