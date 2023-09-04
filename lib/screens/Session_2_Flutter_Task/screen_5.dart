import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/Session 2/Tasks/Screen 5/build_container.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/quran.png"),
            const SizedBox(height: 15),
            Container(
              width: 320,
              height: 150,
              decoration: BoxDecoration(
                  color: const Color(0xffe3e2e7),
                  borderRadius: BorderRadius.circular(40)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("باقي علي صلاة المغرب",
                      style: GoogleFonts.gulzar(fontSize: 25)),
                  Text("01:30:45",
                      style: GoogleFonts.marhey(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      )),
                  Text("ثواني:دقيقة:ساعة",
                      style: GoogleFonts.vibes(
                          color: const Color(0xff5aa29b),
                          fontWeight: FontWeight.bold,
                          fontSize: 18))
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
            ),
            const SizedBox(height: 15),
            Container(
              width: 395,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff06023e),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/check.png",
                    width: 40,
                  ),
                  Image.asset(
                    "assets/images/compass.png",
                    width: 40,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/images/mos7af.png",
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    "assets/images/seb7a.png",
                    width: 40,
                  ),
                  Image.asset(
                    "assets/images/calender.png",
                    width: 40,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
