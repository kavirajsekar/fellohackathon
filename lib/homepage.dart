import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ownpurse/card.dart';
import 'package:ownpurse/colorpalette/colorpalette.dart';
import 'package:ownpurse/details/details1.dart';
import 'package:ownpurse/details/details2.dart';
import 'package:ownpurse/newachive/newachive.dart';
import 'package:ownpurse/profile/profile.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: ColorPalette.textColor),
        backgroundColor: ColorPalette.primaryColor,
        centerTitle: true,
        title: Text(
          'OWNPURSE',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorPalette.textColor),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ), // Icon for the right corner
            onPressed: () {
              // Add your functionality here
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
            ), // Icon for the right corner
            onPressed: () {
              (Platform.isAndroid)
                  ? Get.to(() => profile(),
                      transition: Transition.native,
                      duration: Duration(seconds: 1))
                  : Get.to(() => profile(),
                      transition: Transition.cupertino,
                      duration: Duration(seconds: 1));
              // Add your functionality here
            },
          ),
        ],
      ),
      body: Container(
        color: ColorPalette.Backgroundcolor,
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    (Platform.isAndroid)
                        ? Get.to(() => details(),
                            transition: Transition.native,
                            duration: Duration(seconds: 1))
                        : Get.to(() => details(),
                            transition: Transition.cupertino,
                            duration: Duration(seconds: 1));
                  },
                  child: MyCard(
                    imagePath: 'assets/car.webp',
                    title: 'Mercedes Benz Car',
                    content1: 'Archived Total',
                    content2: 'Dreamed of Total',
                  ),
                ),
                SizedBox(height: 16.0),
                InkWell(
                  onTap: () {
                    (Platform.isAndroid)
                        ? Get.to(() => details2(),
                            transition: Transition.native,
                            duration: Duration(seconds: 1))
                        : Get.to(() => details2(),
                            transition: Transition.cupertino,
                            duration: Duration(seconds: 1));
                  },
                  child: MyCard(
                    imagePath: 'assets/bike.avif',
                    title: 'Royal Enfield Bike',
                    content1: 'Archived Total',
                    content2: 'Dreamed of Total',
                  ),
                ),
                SizedBox(height: 16.0),
                MyCard(
                  imagePath: 'assets/l2.jpeg',
                  title: 'MacBook',
                  content1: 'Archived Total',
                  content2: 'Dreamed of Total',
                ),
                SizedBox(height: 16.0),
                MyCard(
                  imagePath: 'assets/h.jpeg',
                  title: 'New house',
                  content1: 'Archived Total',
                  content2: 'Dreamed of Total',
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorPalette.primaryColor,
              ),
              child: Text(
                'Ownpurse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Add Bank Account'),
              onTap: () {
                // Add your functionality for item 1
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Ownpurse wallet'),
              onTap: () {
                // Add your functionality for item 2
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {
                // Add your functionality for item 2
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Add your functionality for item 2
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Add your functionality for item 2
                Navigator.pop(context); // Close the drawer
              },
            ),
            // Add more ListTile widgets for additional items
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        foregroundColor: ColorPalette.textColor,
        backgroundColor: ColorPalette.primaryColor,
        onPressed: () {
          // Add your functionality here
          (Platform.isAndroid)
              ? Get.to(() => newachive(),
                  transition: Transition.native, duration: Duration(seconds: 1))
              : Get.to(() => newachive(),
                  transition: Transition.cupertino,
                  duration: Duration(seconds: 1));
        },
        child: Icon(Icons.add), // Icon for the bottom right corner
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
