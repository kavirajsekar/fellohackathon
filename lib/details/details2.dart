import 'package:flutter/material.dart';
import 'package:ownpurse/colorpalette/colorpalette.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class details2 extends StatefulWidget {
  const details2({super.key});

  @override
  State<details2> createState() => _details2State();
}

class _details2State extends State<details2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: ColorPalette.textColor),
        backgroundColor: ColorPalette.primaryColor,
        centerTitle: true,
        title: Text(
          'Royal Enfield Bike',
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
                  'assets/bike.avif', // Replace with your image asset
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
                      '2 Lakhs',
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
                      '1 Lakh 30 thousand',
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
                Text(
                  'Payment History',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '1. Rs.35,000',
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
                        '2. Rs.35,000',
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
                        '3. Rs.20,000',
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
                        '3. Rs.5,000',
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
