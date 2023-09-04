import 'package:flutter/material.dart';
import 'package:session_10/screens/Session_2_Flutter_Practise/payment_card.dart';
import 'package:session_10/screens/Session_3_Flutter_Task/edeka_screen.dart';

import '../screens/Session_1_Flutter_Task/circle_inside_screen.dart';
import '../screens/Session_1_Flutter_Task//design_4.dart';
import '../screens/Session_1_Flutter_Task//egypt_flag_method_number_1.dart';
import '../screens/Session_1_Flutter_Task//egypt_flag_method_number_2.dart';
import '../screens/Session_1_Flutter_Task//gradient_background.dart';
import '../screens/Session_1_Flutter_Practise/home_screen.dart';
import '../screens/Session_1_Flutter_Task/triangle_inside_screen.dart';
import '../screens/Session_2_Flutter_Task/screen_1.dart';
import '../screens/Session_2_Flutter_Task/screen_2.dart';
import '../screens/Session_2_Flutter_Task/screen_3.dart';
import '../screens/Session_2_Flutter_Task/screen_4.dart';
import '../screens/Session_2_Flutter_Task/screen_5.dart';
import '../screens/Session_2_Flutter_Task/screen_6.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,

        // home: HomeScreen(),
        // home: FourSquares(),
        // home: EgyptFlag(),
        // home: EgyptFlag2(),
        // home: Circle(),
        // home: Triangle(),
        // home: GradientBackground(),
        // home: Screen1(),
        // home: Screen2(),
        // home: Screen3(),
        // home: Screen4(),
        // home: Screen5(),
        // home: Screen6()),
        home: Edeka());
  }
}
