import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/utils/data.dart';
import 'package:intl_phone_number_field/intl_phone_number_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  final numberController = TextEditingController();
  String? errorEmail;
  String? errorpassword1;
  String? errorpassword2;
  String? errorname;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController2.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            EdgeInsets.only(left: 20, top: height > 880 ? 60 : 40, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register here ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height > 850 ? 32 : 29,
                    color: const Color(0xff363062)),
              ),
              const SizedBox(height: 10),
              Text(
                "Please enter your login information below to access your account",
                style: TextStyle(
                    fontSize: height > 850 ? 20 : 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff6B7280)),
              ),
              height > 880
                  ? const SizedBox(height: 20)
                  : const SizedBox(height: 10),
              const Text(
                "Name",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 70,
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon:
                        const Icon(Icons.email, color: Color(0xff363062)),
                    label: const Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9CA3AF)),
                    ),
                    errorText: errorname,
                  ),
                ),
              ),
              height > 880
                  ? const SizedBox(height: 20)
                  : const SizedBox(height: 10),
              const Text(
                "Username",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 70,
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon:
                        const Icon(Icons.email, color: Color(0xff363062)),
                    label: const Text(
                      "Joesamanta@gmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9CA3AF)),
                    ),
                    errorText: errorEmail,
                  ),
                ),
              ),
              height > 880
                  ? const SizedBox(height: 20)
                  : const SizedBox(height: 10),
              const Text(
                "Phone Number",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 70,
                child: InternationalPhoneNumberInput(
                  controller: numberController,
                  betweenPadding: 7,
                  phoneConfig: PhoneConfig(
                      labelText: "Phone Number",
                      labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9CA3AF))),
                ),
              ),
              height > 880
                  ? const SizedBox(height: 20)
                  : const SizedBox(height: 10),
              const Text(
                "Password",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 70,
                child: TextField(
                  controller: passwordController,
                  obscureText: signupEyeCheck1,
                  maxLength: 16,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.key,
                      color: Color(0xff363062),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          signupEyeCheck1 = !signupEyeCheck1;
                          setState(() {});
                        },
                        icon: signupEyeCheck1 == false
                            ? const Icon(CupertinoIcons.eye_slash_fill)
                            : const Icon(CupertinoIcons.eye_fill)),
                    label: const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9CA3AF)),
                    ),
                    errorText: errorpassword1,
                  ),
                ),
              ),
              height > 880
                  ? const SizedBox(height: 20)
                  : const SizedBox(height: 0),
              const Text(
                "Password",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 70,
                child: TextField(
                  controller: passwordController2,
                  obscureText: signupEyeCheck2,
                  maxLength: 16,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(
                      Icons.key,
                      color: Color(0xff363062),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          signupEyeCheck2 = !signupEyeCheck2;
                          setState(() {});
                        },
                        icon: signupEyeCheck2 == false
                            ? const Icon(CupertinoIcons.eye_slash_fill)
                            : const Icon(CupertinoIcons.eye_fill)),
                    label: const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9CA3AF)),
                    ),
                    errorText: errorpassword2,
                  ),
                ),
              ),
              height > 880
                  ? const SizedBox(height: 40)
                  : const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();
                  String password2 = passwordController2.text.trim();
                  String name = nameController.text.trim();
                  if (email.isNotEmpty) {
                    errorEmail = null;
                  }
                  if (password2.isNotEmpty) {
                    errorpassword2 = null;
                  }
                  if (password.isNotEmpty) {
                    errorpassword1 = null;
                  }
                  if (name.isNotEmpty) {
                    errorname = null;
                  }

                  if (password.isEmpty) {
                    errorpassword1 = "Iltimos password kiriting";
                  }
                  if (password2.isEmpty) {
                    errorpassword2 = "Iltimos password kiriting";
                  }
                  if (name.isEmpty) {
                    errorname = "Iltimos email kiriting";
                  }
                  if (name.isEmpty) {
                    errorname = "Iltimos ism kiriting";
                  }

                  setState(() {});

                  if (!email.contains("@") || email.length < 8) {
                    errorEmail = "Iltimos to'g'ri email kiriting";
                    setState(() {});
                  } else if (password.length < 8) {
                    errorpassword1 = "parol kamida 8ta belgi bo'lishi kerak";
                    setState(() {});
                  } else if (password2.length < 8) {
                    errorpassword2 = "parol kamida 8ta belgi bo'lishi kerak";
                    setState(() {});
                  } else if (password != password2) {
                    errorpassword2 = "Iltimos parollarni bir xil kiritng";
                    errorpassword1 = "Iltimos parollarni bir xil kiritng";
                    setState(() {});
                  } else {
                    accounts.add({"login": email, "password": password});
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: AlertDialog(
                            title: const Icon(
                              Icons.check_circle_outline,
                              color: Color(0xff363062),
                              size: 150,
                            ),
                            content: SizedBox(
                              height: 150,
                              child: Column(
                                children: [
                                  const Text(
                                    'Account created successfully',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 20),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/login");
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff363062),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      padding:
                                          const EdgeInsets.only(top: 10, bottom: 10),
                                      child: const Text("Ok",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff363062),
                  ),
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6B7280)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff363062)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
