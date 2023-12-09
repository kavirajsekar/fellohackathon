import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ownpurse/homepage.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../colorpalette/colorpalette.dart';

class otp_screen extends StatefulWidget {
  final countryCodeValue;
  final _phoneNumber;
  otp_screen(this.countryCodeValue, this._phoneNumber, {super.key});

  @override
  State<otp_screen> createState() => _otp_screenState();
}

class _otp_screenState extends State<otp_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final currentText = TextEditingController();

  String enteredOTP = '';

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          body: Container(
            color: ColorPalette.Backgroundcolor,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenSize.height * 0.07,
                ),
                Text(
                  'OWNPURSE',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                Text(
                  'Verify with mobile number',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                Text(
                  "We have sent you 6-digit code on the phone number ${widget.countryCodeValue}${widget._phoneNumber}",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: screenSize.height * .04,
                ),
                PinFieldAutoFill(
                    currentCode: currentText.text,
                    onCodeChanged: (p0) {
                      if (currentText.text.length == 6) {
                        (Platform.isAndroid)
                            ? Get.to(() => home_page(),
                                transition: Transition.native,
                                duration: Duration(seconds: 1))
                            : Get.to(() => home_page(),
                                transition: Transition.cupertino,
                                duration: Duration(seconds: 1));
                      }
                    },
                    keyboardType: TextInputType.number,
                    codeLength: 6,
                    enabled: true,
                    autoFocus: false,
                    controller: currentText,
                    decoration: BoxLooseDecoration(
                        strokeColorBuilder:
                            FixedColorBuilder(ColorPalette.primaryColor))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn’t get the code?',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle button press
                        print('Button pressed');
                      },
                      child: Text(
                        'Resend',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: ColorPalette.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
