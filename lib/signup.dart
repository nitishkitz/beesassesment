import 'dart:math';

import 'package:beesassesment/local_db.dart';
import 'package:beesassesment/main.dart';
import 'package:beesassesment/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
class sighnUp extends StatefulWidget {
  const sighnUp({super.key});

  @override
  State<sighnUp> createState() => _sighnUpState();
}

class _sighnUpState extends State<sighnUp> {
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController retype=TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          child: SingleChildScrollView(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Card(
                    margin: EdgeInsets.only(right: 22, left: 22),
                    elevation: 10,
                    shadowColor: Colors.grey,
                    child: Container(
                      child: Form(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
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
                                  controller: mobileNumber,
                                  keyboardType: TextInputType.number,
                                  maxLength: 10,
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.phone_android,
                                        color: Colors.grey,
                                      ),
                                      label: Text(
                                        "Mobile number",
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
                                  keyboardType: TextInputType.visiblePassword,
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
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                padding: EdgeInsets.only(right: 10, left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.grey)),
                                child: TextFormField(controller: retype,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                      ),
                                      label: Text(
                                        "Retype password",
                                        style: TextStyle(color: Colors.grey),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: SizedBox(
                                  width: 250,
                                  height: 50,
                                  child: ElevatedButton(
                                      onPressed: () {

                                        var random = Random();
                                        var randomInt = random.nextInt(1000);
                                        showToast("Succesfully registered",
                                            context: context);

                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                                          DbHelper.instance
                                              .insert("appRegistration",
                                              LocalUserRegisterModel(
                                                  userName: userName.text.trim(),
                                                  password: password.text.trim(),
                                                  mobile: int.parse(mobileNumber.text.trim()),
                                                  colCode: "PSS",
                                                  collegeId: 0001,
                                                  schoolId: 1,
                                                  uSerType: 2,
                                                  email: "shiva@gmail.com",
                                                  grpCode: "BEES",
                                                  studId: randomInt.toString(),
                                                  modiDt: DateTime.now().toString()
                                              ).toJson()
                                          );





                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green),
                                      child: Text(
                                        "   Register  ",
                                        style: TextStyle(color: Colors.white),
                                      ))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
