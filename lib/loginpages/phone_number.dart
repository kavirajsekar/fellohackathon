import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ownpurse/loginpages/otp.dart';
import '../colorpalette/colorpalette.dart';

RxBool otpsent = false.obs;

class phone_number extends StatefulWidget {
  phone_number({super.key});

  @override
  State<phone_number> createState() => _phone_numberState();
}

class _phone_numberState extends State<phone_number> {
  @override
  void initState() {
    // TODO: implement initState
    country_code = '+91';
    super.initState();
  }

  final TextEditingController phoneNumnerController = TextEditingController();
  final _phonenumber = GlobalKey<FormState>();

  String? country_code;
  bool isChecked = false;
  bool isPhoneValidated = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: ColorPalette.Backgroundcolor,
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.07,
              ),
              Text(
                'OWNPURSE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
                    // color: ColorPalette.fieldboardercolor
                    ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .07),
              const Center(
                  child: Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              )),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Form(
                  key: _phonenumber,
                  child: IntlPhoneField(
                    cursorColor: ColorPalette.primaryColor,
                    dropdownIcon: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    flagsButtonMargin: EdgeInsets.all(5),
                    dropdownDecoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey.shade300),
                        shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(8)),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    dropdownTextStyle: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: false,
                      isCollapsed: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: ColorPalette.primaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: ColorPalette.primaryColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: ColorPalette.primaryColor,
                        ),
                      ),
                      hintText: "Phone Number",
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                        fontSize: 18.0,
                        color: ColorPalette.primaryColor,
                      ),
                    ),
                    onCountryChanged: (value) {
                      country_code = value.dialCode;
                    },
                    controller: phoneNumnerController,
                    initialCountryCode: "IN",
                    autofocus: false,
                    onChanged: (phone) {
                      if (_phonenumber.currentState!.validate()) {
                        setState(() {});
                      }
                    },
                    validator: (value) {
                      if (value!.isValidNumber()) {
                        setState(() {
                          isPhoneValidated = true;
                        });
                      } else {
                        setState(() {
                          isPhoneValidated = false;
                        });
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              InkWell(
                  onTap: () {
                    FocusManager.instance.primaryFocus!.unfocus();

                    //navigation page
                    (Platform.isAndroid)
                        ? Get.to(
                            () => otp_screen(
                                country_code, phoneNumnerController.text),
                            transition: Transition.native,
                            duration: Duration(seconds: 1))
                        : Get.to(
                            () => otp_screen(
                                country_code, phoneNumnerController.text),
                            transition: Transition.cupertino,
                            duration: Duration(seconds: 1));
                  },
                  child: (otpsent.value == true)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  ColorPalette.primaryColor),
                            ),
                            SizedBox(
                                height:
                                    16.0), // Adjust the spacing between CircularProgressIndicator and Text
                            // Text('Loading...'),
                          ],
                        )
                      : Container(
                          margin: EdgeInsets.only(bottom: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorPalette.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: MediaQuery.of(context).size.width * .75,
                          height: 45,
                          child: Text(
                            'Send OTP',
                            style: TextStyle(
                              fontSize: 17,
                              color: ColorPalette.textColor,
                            ),
                          ),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
