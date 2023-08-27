import 'package:flutter/material.dart';
import '../../components/Session 2/Tasks/Screen 2/build_container_screen2.dart';
import '../../components/Session 2/practise/build_payment_container_practise.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Payments",
                    style: TextStyle(
                        color: Color(0xff060b42),
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: const Color(0x86868664),
                      width: 2,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                        color: Color(0xff7ad5d4),
                      ),
                      Text(
                        "ADD",
                        style: TextStyle(color: Color(0xff7ad5d4)),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 26),
            Row(children: [
              buildPaymentContainer(
                  backgroundColor: const Color(0xfffebe52),
                  icon: Icons.warning_amber,
                  whiteText: "\$2,000",
                  greyedText: "OVERDUE"),
              const SizedBox(width: 15),
              buildPaymentContainer(
                  backgroundColor: Colors.pink,
                  icon: Icons.money_off,
                  whiteText: "\$2,000",
                  greyedText: "UNPAID"),
            ]),
            const SizedBox(height: 20),
            Row(
              children: [
                buildContainerScreen2(
                    price: "\$4,000",
                    priceSize: 30,
                    priceDescription: "Monthly Rent (Main Street)",
                    priceDescriptionSize: 10,
                    image: "assets/images/man2.png"),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                buildContainerScreen2(
                    price: "\$2,000",
                    priceSize: 30,
                    priceDescription: "Monthly Rent(joanne Park)",
                    priceDescriptionSize: 10,
                    image: "assets/images/man3.png")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Colors.grey),
                  Icon(Icons.receipt_long_outlined, color: Colors.grey),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff17c6e6),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.repeat, color: Colors.grey),
                  Icon(Icons.more_horiz, color: Colors.grey)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
