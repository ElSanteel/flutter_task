import 'package:flutter/material.dart';

import '../../components/Session 2/Tasks/Screen 5/build_container.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/quran.png"),
          const SizedBox(height: 15),
          Container(
            width: 320,
            height: 150,
            decoration: BoxDecoration(
                color: const Color(0xffe3e2e7),
                borderRadius: BorderRadius.circular(40)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "باقي علي صلاة المغرب",
                  style: TextStyle(
                      color: Color(0xff06023e),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text(
                  "01:30:45",
                  style: TextStyle(
                      color: Color(0xff5aa29b),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  "ثواني:دقيقة:ساعة",
                  style: TextStyle(
                      color: Color(0xff5aa29b),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 370,
            height: 450,
            decoration: BoxDecoration(
              color: const Color(0xffe3e2e7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildContainerScreen5(
                      timeType: "صباحا", time: "05:30", prayName: "الفجر"),
                  buildContainerScreen5(
                      timeType: "صباحا", time: "06:30", prayName: "الشروق"),
                  buildContainerScreen5(
                      timeType: "مساءا", time: "12:30", prayName: "الظهر"),
                  buildContainerScreen5(
                      timeType: "مساءا", time: "03:30", prayName: "العصر"),
                  buildContainerScreen5(
                      timeType: "مساءا", time: "05:30", prayName: "المغرب"),
                  buildContainerScreen5(
                      timeType: "مساءا", time: "06:30", prayName: "العشاء"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
