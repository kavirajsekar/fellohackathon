import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
import 'package:ownpurse/loginpages/phone_number.dart';

import 'colorpalette/colorpalette.dart';
import 'package:page_transition/page_transition.dart';

// SharedPreferences prefs = await SharedPreferences.getInstance();
//         prefs.setString('sessionid', response.cookies.get(sessionid);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    theme: ThemeData(
      primaryColor: ColorPalette.primaryColor,
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

// }
// testig for the code
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? LoginTime;
  // bool _amplifyConfigured = false;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedSplashScreen(
          splashIconSize: MediaQuery.of(context).size.height,
          splashTransition: SplashTransition.fadeTransition,
          duration: 1000,
          splash: Center(
            child: Column(
              children: [
                Container(
                    color: ColorPalette.Backgroundcolor,
                    padding: const EdgeInsets.all(15),
                    width: size.width,
                    height: size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: size.height * 0.26),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: Image.asset(
                            'assets/introapp.png',
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fitWidth,
                            height: 280,
                          ),
                        ),
                        SizedBox(height: size.height * 0.25),
                        Column(
                          children: [
                            Text(
                              'OWNPURSE',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ),
          pageTransitionType: PageTransitionType.fade,
          nextScreen: phone_number()),
    );
  }
}
