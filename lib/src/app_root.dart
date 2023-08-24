import 'package:flutter/material.dart';

import '../screens/circle_inside_screen.dart';
import '../screens/design_4.dart';
import '../screens/egypt_flag_method_number_1.dart';
import '../screens/egypt_flag_method_number_2.dart';
import '../screens/gradient_background.dart';
import '../screens/home_screen.dart';
import '../screens/triangle_inside_screen.dart';

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
      home: GradientBackground(),
    );
  }
}
