import 'package:flutter/material.dart';

class PatientDataScreen extends StatelessWidget {
  var patientname = 'Moaaz Mohammed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$patientname',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.black)),
      ),
      body:Container(),
    );
  }
}
