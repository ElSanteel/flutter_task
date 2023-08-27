import 'package:flutter/material.dart';

import '../../components/Session 2/Tasks/Screen 4/build_column.dart';
import '../../components/Session 2/Tasks/Screen 4/build_container.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              width: 450,
              height: 150,
              decoration: BoxDecoration(
                  color: const Color(0xff161527),
                  borderRadius: BorderRadius.circular(30)),
              child: const Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Properties around",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xffb8b8c4),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Morumbi",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffd26797),
                          size: 40,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What are you looking for",
                style: TextStyle(
                    color: Color(0xff18162b),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 250, // Specify the height of the container row
              child: ListView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                children: [
                  buildContainer(
                    image: "assets/images/houses.png",
                    categoryName: "Houses",
                  ),
                  const SizedBox(width: 15),
                  buildContainer(
                    image: "assets/images/apartments.png",
                    categoryName: "Apartments",
                  ),
                  // Add more containers as needed
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "New arrivals",
                style: TextStyle(
                    color: Color(0xff1f1f2b),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Image.asset("assets/images/pinheiros.png"),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Pinherios",
                            style: TextStyle(
                                color: Color(0xff28264d),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text("\$3.000",
                              style: TextStyle(
                                  color: Color(0xff28264d),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25))
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Text("Avenida reboucas",
                              style: TextStyle(color: Colors.grey)),
                          Spacer(),
                          Text("month")
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          buildColumn(
                              icon: Icons.bed,
                              number: "2",
                              greyedText: "bedroom"),
                          const SizedBox(width: 20),
                          buildColumn(
                              icon: Icons.bathtub,
                              number: "2",
                              greyedText: "bedroom"),
                          const SizedBox(width: 20),
                          buildColumn(
                              icon: Icons.local_parking,
                              number: "3",
                              greyedText: "parking")
                        ],
                      )
                    ],
                  ),
                ),
                const Row(children: [])
              ],
            )
          ],
        ),
      ),
    );
  }
}
