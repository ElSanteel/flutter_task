import 'package:flutter/material.dart';

import '../../components/Session 2/Tasks/Screen 1/build_container_screen_1.dart';
import '../../components/Session 2/Tasks/Screen 1/build_row_screen_1.dart';
import '../../components/Session 2/example/cart_item.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xff131c55),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //TODO::Row with image and icon
                  const Stack(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            "assets/images/man.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  // TODO:: TEXT COLUMN
                  Column(
                    children: [
                      const Text(
                        "Georgia Estrada",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Amount Due \$1080",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "On Lease",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // TODO:: ROW OF CARDS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardItem(const Color(0xff12cae6), Icons.home, "Property"),
                      CardItem(const Color(0xff3ac678), Icons.attach_money,
                          "Payments"),
                      CardItem(const Color(0xff022d71), Icons.savings_outlined,
                          "Deposit"),
                    ],
                  ),

                  SizedBox(
                    height: 70,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              width: 2,
                              color:
                                  Color(0xff353c7f)), //border width and color
                          backgroundColor:
                              const Color(0xff131c55), // Background color
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {},
                        child: const Text("Invite to collect rent ")),
                  )
                ],
              ),
            ),
          ),
          //TODO:: down half of screen
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildRow(
                            boldText: "Lease Type", greyedText: "Fixed lease"),
                        const SizedBox(width: 15),
                        buildRow(
                            boldText: "15th of month",
                            greyedText: "Payment Due on"),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        buildRow(
                            boldText: "02-02-2019", greyedText: "Start Date"),
                        const SizedBox(width: 90),
                        buildRow(
                            boldText: "02-02-2020", greyedText: "End Date"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        buildRow(
                            boldText: "\$1,300", greyedText: "Rent Amount"),
                        const SizedBox(width: 140),
                        buildRow(
                            boldText: "\$1,300", greyedText: "Security Amount"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        buildContainer(
                            backGround: const Color(0xff131b55),
                            icon: Icons.phone,
                            whiteText: "Start Call"),
                        const SizedBox(width: 15),
                        buildContainer(
                            backGround: const Color(0xff0ecbe4),
                            icon: Icons.send,
                            whiteText: "Send Email")
                      ],
                    ),
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
