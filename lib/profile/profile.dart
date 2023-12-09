import 'package:flutter/material.dart';
import 'package:ownpurse/colorpalette/colorpalette.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorPalette.textColor),
        backgroundColor: ColorPalette.primaryColor,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorPalette.textColor),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            // Rounded border image
            Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorPalette.primaryColor,
                  width: 2.0,
                ),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/introapp.pngg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0), // Adjust spacing
            // Four divided texts
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Kaviraj',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Software developer',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
