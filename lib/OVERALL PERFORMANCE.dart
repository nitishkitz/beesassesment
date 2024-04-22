import 'package:beesassesment/dashboard.dart';
import 'package:beesassesment/profile_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class overallPerformance extends StatefulWidget {
  const overallPerformance({super.key});

  @override
  State<overallPerformance> createState() => overallPerformanceState();
}

class overallPerformanceState extends State<overallPerformance> {
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
          title: Text("overallperformance"),
          backgroundColor: Colors.green,
          leading:  IconButton(icon: Icon(CupertinoIcons.back), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard()));
          },),

        ),
        body: SingleChildScrollView(
          child: Container(
    child: profileData.isEmpty
    ? Center(child: CircularProgressIndicator(

    ),)
           : Column(
              children: [
                Center(
                  child:
                  Card(
                    color: Colors.white,
                    child: Container(
                      width: 350,
                      height: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12),
                            child: Text(
                                "MANAGEMENT ECONOMICS \n               ACCOUNTIBILTY"),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: SizedBox(
                              height: 2,
                              width: 300,
                              child: Container(
                                decoration:
                                BoxDecoration(color: Colors.black26),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 50, top: 5),
                                child: Text(
                                  "GRADE",
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                const EdgeInsets.only(right: 50, top: 5),
                                child: Text(
                                  "CREDITS",
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.black26),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text("${profileData.first.grade}"),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text("${profileData.first.credits}"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: SizedBox(
                              height: 2,
                              width: 300,
                              child: Container(
                                decoration:
                                BoxDecoration(color: Colors.black26),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 50, top: 5),
                                  child: Text(
                                    "STATUS",
                                    style:
                                    TextStyle(color: Colors.orangeAccent),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(right: 50, top: 5),
                                  child: Text(
                                    "MONTH/YEAR",
                                    style:
                                    TextStyle(color: Colors.orangeAccent),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.black26),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text("${profileData.first.status}"),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Text("${profileData.first.monthyr}"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child:
                  Card(
                    color: Colors.white,
                    child: Container(
                      width: 350,
                      height: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12),
                            child: Text(
                                "CONSTRUCTION TECHNOLOGY \n               MANAGEMENT"),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: SizedBox(
                              height: 2,
                              width: 300,
                              child: Container(
                                decoration:
                                BoxDecoration(color: Colors.black26),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 50, top: 5),
                                child: Text(
                                  "GRADE",
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                const EdgeInsets.only(right: 50, top: 5),
                                child: Text(
                                  "CREDITS",
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.black26),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text("${profileData.first.grade}"),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text("${profileData.first.credits}"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: SizedBox(
                              height: 2,
                              width: 300,
                              child: Container(
                                decoration:
                                BoxDecoration(color: Colors.black26),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 50, top: 5),
                                  child: Text(
                                    "STATUS",
                                    style:
                                    TextStyle(color: Colors.orangeAccent),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(right: 50, top: 5),
                                  child: Text(
                                    "MONTH/YEAR",
                                    style:
                                    TextStyle(color: Colors.orangeAccent),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.black26),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text("${profileData.first.status}"),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Text("${profileData.first.monthyr}"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      width: 350,
                      height: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, bottom: 12),
                            child: Text(
                                "REPAIR AND REHABILATION OF \n               STRUCTURES"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: SizedBox(
                              height: 2,
                              width: 300,
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.black26),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 5),
                                child: Text(
                                  "GRADE",
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 50, top: 5),
                                child: Text(
                                  "CREDITS",
                                  style: TextStyle(color: Colors.orangeAccent),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.black26),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, bottom: 12),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text("${profileData.first.grade}"),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text("${profileData.first.credits}"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, bottom: 12),
                            child: SizedBox(
                              height: 2,
                              width: 300,
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.black26),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, bottom: 12.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 50, top: 5),
                                  child: Text(
                                    "STATUS",
                                    style:
                                        TextStyle(color: Colors.orangeAccent),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 50, top: 5),
                                  child: Text(
                                    "MONTH/YEAR",
                                    style:
                                        TextStyle(color: Colors.orangeAccent),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.black26),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text("${profileData.first.status}"),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Text("${profileData.first.monthyr}"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
