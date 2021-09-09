import 'package:flutter/material.dart';

class ShowPatientInfoCardItem extends StatelessWidget {
  const ShowPatientInfoCardItem({
    Key? key,
    required this.title,
    required this.subTitle,
  });

  final title;
  final subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5),
      child: Card(
        elevation: 3.0,
        child: ListTile(
          leading: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          title: Text(
            subTitle,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
