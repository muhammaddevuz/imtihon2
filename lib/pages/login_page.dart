import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/utils/data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? errorEmail;
  String? errorpassword;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height > 880 ? height * 0.54 : height * 0.51,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/loginBarber.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: height > 880
                  ? height * 0.61
                  : height < 800
                      ? height * 0.72
                      : height * 0.67,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back👋",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height > 850 ? 32 : 29,
                          color: const Color(0xff363062)),
                    ),
                    Text(
                      "Please enter your login information below to access your account",
                      style: TextStyle(
                          fontSize: height > 850 ? 20 : 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6B7280)),
                    ),
                    height > 880 ? const SizedBox(height: 20) : const SizedBox(height: 8),
                    const Text(
                      "Username",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff111827)),
                    ),
                    const SizedBox(height: 2),
                    TextField(
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
                    height > 880 ? const SizedBox(height: 20) : const SizedBox(height: 5),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff111827)),
                    ),
                    const SizedBox(height: 2),
                    TextField(
                      maxLength: 16,
                      controller: passwordController,
                      obscureText: loginEyeCheck,
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
                              loginEyeCheck = !loginEyeCheck;
                              setState(() {});
                            },
                            icon: loginEyeCheck == false
                                ? const Icon(CupertinoIcons.eye_fill)
                                : const Icon(CupertinoIcons.eye_slash_fill)),
                        label: const Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9CA3AF)),
                        ),
                        errorText: errorpassword,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff363062)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        String email = emailController.text.trim();
                        String password = passwordController.text.trim();

                        for (var element in accounts) {
                          if (element['login'] == email &&
                              element['password'] == password) {
                            Navigator.pushNamed(context, "/home");
                          }
                        }
                        errorEmail = "email yoki parol xato";
                        errorpassword = "email yoki parol xato";
                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff363062),
                        ),
                        padding: const EdgeInsets.only(top: 12, bottom: 12),
                        child: const Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    height > 880 ? const SizedBox(height: 20) : const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff6B7280)),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: const Text(
                            "Register",
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
          ),
        ],
      ),
    );
  }
}
