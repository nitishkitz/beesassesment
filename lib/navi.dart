import 'package:flutter/material.dart';

class Navi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? selectedSemester;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select Semester'),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
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
                      selectedSemester = newValue;
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}
