import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_10/screens/Session_2_Flutter_Practise/payment_card.dart';
import 'package:session_10/screens/Session_3_Flutter_Task/edeka_screen.dart';
import '../bloc/bmi_cubit/bmi_cubit.dart';
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
import '../screens/Session_4_Flutter_Practise/trying_setstate.dart';
import '../screens/Session_4_Flutter_Task/edeka_screen_with_new_tasks.dart';
import '../screens/Session_5_Flutter_Task/bmi_calculator_screen.dart';
import '../screens/Session_6_Flutter_Task/Quiz_App/quiz_splash_screen.dart';
import '../screens/Session_6_Flutter_Task/Rock_Paper_Scissor_App/rock_paper_scissor_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (BuildContext context) => BmiCubit())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/splash',
        // routes: {
        //   '/splash': (context) => const QuizSplashScreen(),
        // },

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
        // home: TryingSetState(),
        // home: Edeka(),
        // home: EdekaWithNewTasks(),
        home: BmiCalculatorScreen(),
        // home: RockPaperScissorScreen(),
        // home: const QuizSplashScreen(),
      ),
    );
  }
}
