import 'package:clinic_mob/Widgets/CustomDialog.dart';
import 'package:flutter/material.dart';

import 'PatientDataScreen.dart';

class RetieveDataCard extends StatelessWidget {
  const RetieveDataCard({
    required this.name,
    required this.date,
    required this.id,
    required this.age,
    required this.phone,
    required this.address,
    required this.treatment,
    required this.diagnoses,
    required this.note,
  });
  final String name;
  final String date;
  final String id;
  final String age;
  final String phone;
  final String address;
  final String treatment;
  final String diagnoses;
  final String note;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>PatientDataScreen()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                id,
                style: TextStyle(
                    fontSize: width * 0.06, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: width * 0.06, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15,right:5,left: 5),
                    child: Icon(Icons.arrow_forward_ios),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
