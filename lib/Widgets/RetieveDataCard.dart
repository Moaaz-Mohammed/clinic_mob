import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 1,
              offset: Offset(0, 3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              id,
              style: TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              date,
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
            Text(
              age,
              style: TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              phone,
              style: TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              address,
              style: TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              diagnoses,
              style: TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              treatment,
              style: TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              note,
              style: TextStyle(
                  fontSize: width * 0.06, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
