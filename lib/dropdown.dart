import 'package:flutter/material.dart';

class Marks extends StatefulWidget {
  const Marks({Key? key}) : super(key: key);

  @override
  State<Marks> createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  String? selectedSemester;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Marks'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align children to the top
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: 200), // Constrain the height of the dropdown
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: DropdownButton<String>(
                  hint: Text('Select Semester'),
                  isExpanded: true, // Ensure the dropdown button expands to maximum width
                  value: selectedSemester,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedSemester = newValue;
                    });
                  },
                  items: <String>[
                    '1st Semester',
                    '2nd Semester',
                    '3rd Semester',
                    '4th Semester',
                    '5th Semester',
                    '6th Semester',
                    '7th Semester',
                    '8th Semester',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20), // Add spacing between the DropdownButton and the second Container
              Material(
                elevation: 4, // Set the elevation value here
                borderRadius: BorderRadius.circular(8), // Optional: Add border radius
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          "Data structure",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Max mark : ",
                                  style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " 30",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "obtained marks : ",
                                  style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " 30",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Marks(),
  ));
}
