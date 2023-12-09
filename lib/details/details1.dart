import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ownpurse/colorpalette/colorpalette.dart';
import 'package:ownpurse/details/payment/payment.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: ColorPalette.textColor),
        backgroundColor: ColorPalette.primaryColor,
        centerTitle: true,
        title: Text(
          'Mercedes Benz Car',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorPalette.textColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: ColorPalette.Backgroundcolor,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Centered Image

                Image.asset(
                  'assets/car.webp', // Replace with your image asset
                  width: 400.0,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16.0),

                // Bold Text
                Center(
                  child: CircularPercentIndicator(
                    radius: 130.0,
                    animation: true,
                    animationDuration: 1500,
                    lineWidth: 20.0,
                    percent: 0.6,
                    center: Text(
                      "60 %",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Colors.yellow,
                    progressColor: Colors.red,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .03),
                    Text(
                      '20 Lakhs',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .2),
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .03),
                    Text(
                      '14 Lakhs',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                Container(
                  height: .1, // Adjust the height of the line
                  color: Color.fromARGB(255, 111, 106, 106),
                  margin: EdgeInsets.symmetric(
                      vertical: 20), // Adjust the margin as needed
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment History',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the radius as needed
                          border: Border.all(
                            color: ColorPalette.primaryColor, // Border color
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(
                              0), // Match the Container's borderRadius
                          onTap: () {
                            // Handle button press
                          },
                          child: TextButton(
                            onPressed: () {
                              // Handle button press
                              (Platform.isAndroid)
                                  ? Get.to(() => payment(),
                                      transition: Transition.native,
                                      duration: Duration(seconds: 1))
                                  : Get.to(() => payment(),
                                      transition: Transition.cupertino,
                                      duration: Duration(seconds: 1));
                            },
                            child: Text(
                              'Add Payment',
                              style: TextStyle(
                                color: ColorPalette.primaryColor, // Text color
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '1. Rs.1 Lakhs',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'First Salary , Jan 2023',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '2. Rs.3 Lakhs',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Incentive , Feb 2023',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '3. Rs.2 Lakhs',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Salary , March 2023',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '3. Rs.8 Lakhs',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Business , April 2023',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
