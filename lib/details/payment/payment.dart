// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ownpurse/colorpalette/colorpalette.dart';
import 'package:intl/intl.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateinput.text = "";
  }

  final TextEditingController AchivementnameController =
      TextEditingController();
  final TextEditingController AchivementamtController = TextEditingController();
  final TextEditingController notes = TextEditingController();
  TextEditingController dateinput = TextEditingController();

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
          'Add New Savings',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorPalette.textColor),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: ColorPalette.Backgroundcolor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //option 1
                    Text(
                      'Amount',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    TextFormField(
                      scrollPadding: EdgeInsets.only(bottom: 40),
                      cursorColor: ColorPalette.primaryColor,
                      autofocus: false,
                      // keyboardType: TextInputType.number,
                      controller: AchivementnameController,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 20),
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
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red.shade700),
                        ),
                        hintText: "Enter Amount",
                      ),
                      // onTap: () {
                      //   _formKey.currentState!.reset();
                      // },
                      validator: (name) {
                        if (name!.isEmpty || name == "") {
                          return "Required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),
                    Text(
                      'Notes',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    TextFormField(
                      scrollPadding: EdgeInsets.only(bottom: 40),
                      cursorColor: ColorPalette.primaryColor,
                      autofocus: false,
                      // keyboardType: TextInputType.number,
                      controller: AchivementamtController,
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 20),
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
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red.shade700),
                        ),
                        hintText: "Notes",
                      ),
                      // onTap: () {
                      //   _formKey.currentState!.reset();
                      // },
                      validator: (name) {
                        if (name!.isEmpty || name == "") {
                          return "Required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),

                    Text(
                      'Date',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    TextFormField(
                      controller: dateinput,

                      decoration: InputDecoration(
                        hintText: 'Date',
                        suffixIcon: Icon(
                          Icons.calendar_today,
                          color: ColorPalette.primaryColor,
                        ),
                        isCollapsed: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 19, horizontal: 20),
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
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(color: Colors.red.shade700),
                        ),
                      ),
                      readOnly: true,
                      //set it true, so that user will not able to edit text

                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            builder: (context, child) {
                              return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: const ColorScheme.light(
                                        primary: ColorPalette
                                            .primaryColor, // header background color
                                        onPrimary:
                                            Colors.white, // header text color
                                        onSurface: ColorPalette
                                            .primaryColor // body text color
                                        ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        foregroundColor:
                                            Colors.black, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!);
                            },
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDatesending =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          // String formattedDate2 =
                          //     DateFormat('dd-MM-yyyy').format(pickedDate);
                          //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text =
                                formattedDatesending; //set output date to TextField value.
                          });
                        } else {}
                      },

                      validator: (value) {
                        if (value == null || value == '') {
                          return "Please Fill Visit Date *";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,

                      onChanged: (value) {},
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * .03),

                    Text(
                      'Payment Method',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            // Razorpay razorpay = Razorpay();
                          },
                          child: Image.asset(
                            'assets/upi.jpg', // Replace with your image path
                            width: 100.0, // Set the width as needed
                            height: 100.0, // Set the height as needed
                          ),
                        ),
                        Image.asset(
                          'assets/b.png', // Replace with your image path
                          width: 100.0, // Set the width as needed
                          height: 100.0, // Set the height as needed
                        ),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * .06),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorPalette.primaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              width: MediaQuery.of(context).size.width * .85,
                              height: 45,
                              child: Text(
                                'Add',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .2),
                  ],
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 30),
          //         child: Text(
          //           'Add Your ',
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          //         ),
          //       ),
          //       Container(
          //         padding: EdgeInsets.all(16.0),
          //         color: ColorPalette.Backgroundcolor,
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           children: [
          //             InkWell(
          //                 onTap: () {},
          //                 child: Icon(Icons.camera,
          //                     color: ColorPalette.primaryColor)),
          //             InkWell(
          //                 onTap: () {},
          //                 child: Icon(Icons.image,
          //                     color: ColorPalette.primaryColor)),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
