import 'package:flutter/material.dart';

import '../../components/Session 2/Tasks/Screen 3/build_text_field.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8bc24a),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              "مرحبا قم بتسجيل دخولك",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 744,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  Image.asset("assets/images/jewel.png"),
                  const SizedBox(height: 10),
                  const Text("الجوهرة العالمية",
                      style: TextStyle(
                          color: Color(0xff6c6e6d),
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  const Text(
                    "Al Jawhara Intl",
                    style: TextStyle(
                        color: Color(0xff6c6e6d),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 40),
                  buildTextField(text: "البريد الالكتروني", icon: Icons.email),
                  const SizedBox(height: 20),
                  buildTextField(text: "كلمة المرور", icon: Icons.lock),
                  const SizedBox(
                    height: 120,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfffda941),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), // <-- Radius
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "قم بالتسجيل",
                        style: TextStyle(
                            color: Color(0xfffda941),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "ليس لديك حساب من قبل ؟",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
