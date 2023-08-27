import 'package:flutter/material.dart';

import 'build_column_inside_container_screen_2.dart';

Container buildContainerScreen2(
    {required String price,
    required double priceSize,
    required String priceDescription,
    required double priceDescriptionSize,
    required String image}) {
  return Container(
    width: 330,
    height: 200,
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildColumnInsideContainer(
                  boldText: price,
                  greyedText: priceDescription,
                  boldTextSize: priceSize,
                  greyedTextSize: priceDescriptionSize),
              Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                    color: const Color(0xffdbfeea),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.green,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("PAID",
                        style: TextStyle(color: Colors.green, fontSize: 10))
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildColumnInsideContainer(
                  boldText: "02-02-2019",
                  boldTextSize: 15,
                  greyedText: "DUE DATE",
                  greyedTextSize: 10),
              buildColumnInsideContainer(
                  boldText: "0 days",
                  boldTextSize: 15,
                  greyedText: "DAYS OVERDUE",
                  greyedTextSize: 10),
              CircleAvatar(
                child: Image.asset(image),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
