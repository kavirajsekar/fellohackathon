import 'package:flutter/material.dart';
import 'package:ownpurse/colorpalette/colorpalette.dart';
import 'package:image_picker/image_picker.dart';

class newachive extends StatefulWidget {
  const newachive({super.key});

  @override
  State<newachive> createState() => _newachiveState();
}

class _newachiveState extends State<newachive> {
  late XFile? _image;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    setState(() {
      _image = pickedFile;
    });
  }

  final TextEditingController AchivementnameController =
      TextEditingController();
  final TextEditingController AchivementamtController = TextEditingController();
  final TextEditingController notes = TextEditingController();

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
          'Create New Achievement',
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
                      'Achivement Name',
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
                        hintText: "Achivement Name",
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
                      'Achivement Amount',
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
                        hintText: "Achivement Amount",
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

                    //option 4
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
                      maxLines: 5,
                      // keyboardType: TextInputType.number,
                      controller: notes,
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
                        hintText: "Enter Achivement Notes",
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
                                'Create',
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Add Your Images',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  color: ColorPalette.Backgroundcolor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            _pickImage(ImageSource.camera);
                          },
                          child: Icon(Icons.camera,
                              color: ColorPalette.primaryColor)),
                      InkWell(
                          onTap: () {
                            _pickImage(ImageSource.gallery);
                          },
                          child: Icon(Icons.image,
                              color: ColorPalette.primaryColor)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
