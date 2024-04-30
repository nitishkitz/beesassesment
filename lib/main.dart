import 'dart:convert';

import 'package:beesassesment/dashboard.dart';
import 'package:beesassesment/dropdown.dart';
import 'package:beesassesment/local_db.dart';
import 'package:beesassesment/navi.dart';
import 'package:beesassesment/signup.dart';
import 'package:beesassesment/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Marks(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  List<LocalUserRegisterModel> usersList = [];
  TextEditingController password = TextEditingController();
  TextEditingController userName = TextEditingController();

  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    var data = await DbHelper.instance.queryAll("appRegistration");
    for (int i = 0; i < (data?.length ?? 0); i++) {
      usersList.add(localUserRegisterModelFromJson(json.encode(data?[i])));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 180.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: 400,
                    width: 400,
                    child: Center(
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        shadowColor: Colors.grey,
                        child: Form(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  margin: EdgeInsets.only(top: 100),
                                  padding: EdgeInsets.only(right: 22, left: 22),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey)),
                                  child: TextFormField(
                                    controller: userName,
                                    decoration: InputDecoration(
                                        icon: Icon(
                                          Icons.person,
                                          color: Colors.grey,
                                        ),
                                        label: Text(
                                          "USER ID",
                                          style: TextStyle(color: Colors.grey),
                                        )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  padding: EdgeInsets.only(right: 10, left: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.grey)),
                                  child: TextFormField(
                                    controller: password,
                                    decoration: InputDecoration(
                                        icon: Icon(
                                          Icons.lock,
                                          color: Colors.grey,
                                        ),
                                        label: Text(
                                          "PASSWORD",
                                          style: TextStyle(color: Colors.grey),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width: 250,
                                  height: 50,
                                  child: ElevatedButton(

                                      onPressed: () {


                                        if(password.text.isNotEmpty&&userName.text.isNotEmpty){
                                          var userData = usersList
                                              .where((element) =>
                                          element.password ==
                                              password.text.trim() &&
                                              element.userName ==
                                                  userName.text.trim())
                                              .toList();
                                          if (userData !=
                                              <LocalUserRegisterModel>[] &&
                                              userData.isNotEmpty &&
                                              userData != null) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                    const dashboard()));
                                            showToast("User Login Successful",
                                                context: context);
                                            print("User Login Successful");
    }else{}

                                        } else {
                                          showToast(
                                              "User and password is not valid",
                                              context: context);

                                          print(
                                              "User and password is not valid");
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      child: Text(
                                        "   Login  ",
                                        style: TextStyle(color: Colors.white),
                                      )))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value ?? false;
                                });
                              }),
                        ),
                        Text("Remember credendials"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 55.0),
                          child: Text("forgot password"),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Text("DONT'HAVE AN ACCOUNT? sign up"),
                        Text("Powered by"),
                        Container(
                            width: 100,
                            height: 100,
                            child: Image.network(
                                "https://media.licdn.com/dms/image/C4E0BAQHwwXFjIKIA9g/company-logo_200_200/0/1646021138350/bees_software_solutions_pvt_ltd_logo?e=2147483647&v=beta&t=fj3XG6cTdNV3OJAb8Ad3z9RXPD2fp4_ZTKgKoPxUGqA"))
                      ],
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sighnUp()));
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
