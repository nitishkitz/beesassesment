import 'dart:io';

import 'package:beesassesment/OVERALL%20PERFORMANCE.dart';
import 'package:beesassesment/main.dart';
import 'package:beesassesment/profile_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  List<ProfileDataModel> profileData = [];

  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    var response = await http.get(
        Uri.parse("https://6620ff143bf790e070b17bf5.mockapi.io/todo/userdata"));

    profileData = profileDataModelFromJson(response.body);
    print("datalist    ${profileData.first.email}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("profile"),
            backgroundColor: Colors.green,
            leading: IconButton(
              icon: Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => overallPerformance()));
                  })
            ]),
        body: SingleChildScrollView(
            child: Container(
          child: profileData.isEmpty
              ? Center(child: CircularProgressIndicator(
            
          ), )
              : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: CircleAvatar(radius: 55,child: _image == null
                            ? IconButton( onPressed: () => _pickImage(ImageSource.gallery),icon: Icon(Icons.add_a_photo),)
                            : Image.file(_image!),),
            )),                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Text("null"),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 45.0, top: 25, bottom: 25),
                    child: SizedBox(
                      height: 2,
                      width: 300,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black26),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hall ticket number",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.batch.toString() ?? ""),
                      Text(
                        "Admission date",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.admindate.toString() ?? ""),
                      Text(
                        "batch",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.batch.toString() ?? ""),
                      Text(
                        "Semester",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.semester.toString() ?? ""),
                      Text(
                        "DOB",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.dob.toString() ?? ""),
                      Text(
                        "Aadhaar Number",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.aadhaar ?? ""),
                      Text(
                        "Mobile Number",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.mobilenumber ?? ""),
                      Text(
                        "Email Id",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.email ?? ""),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 45.0, top: 25, bottom: 25),
                        child: SizedBox(
                          height: 2,
                          width: 300,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.black26),
                          ),
                        ),
                      ),
                      Text(
                        "Father Name",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.fathersname ?? ""),
                      Text(
                        "Mother Name",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.mothersname ?? ""),
                      Text(
                        "Parent Mobile number",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.parentmobilenumber ?? ""),
                      Text(
                        "Branch code",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.branchid ?? ""),
                      Text(
                        "Mother tounge",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(profileData.first.mothertongue ?? "")
                    ],
                  ),
                ]),
        )));
  }
}
