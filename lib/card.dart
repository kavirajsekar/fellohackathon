import 'package:flutter/material.dart';
import 'package:ownpurse/colorpalette/colorpalette.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String content1;
  final String content2;

  MyCard({
    required this.imagePath,
    required this.title,
    required this.content1,
    required this.content2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorPalette.textColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        // Set border properties here
        borderRadius: BorderRadius.circular(12.0), // Adjust the corner radius
        side: BorderSide(
            color: ColorPalette.primaryColor,
            width: 2.0), // Border color and width
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Centered Image
            Center(
              child: Image.asset(
                imagePath,
                width: 200,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),

            Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16.0),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                content1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            LinearPercentIndicator(
              lineHeight: 8.0,
              percent: 0.6,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: const Color.fromARGB(255, 197, 22, 10),
            ),
            SizedBox(height: 16.0),
            LinearPercentIndicator(
              lineHeight: 8.0,
              percent: 1,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: const Color.fromARGB(255, 222, 201, 12),
            ),

            SizedBox(height: 8.0),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                content2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
