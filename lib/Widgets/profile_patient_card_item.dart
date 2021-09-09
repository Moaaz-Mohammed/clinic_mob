import 'package:flutter/material.dart';

class ProfilePatientCardItem extends StatelessWidget {
  const ProfilePatientCardItem({Key? key, required this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          contentPadding: const EdgeInsets.all(10.0),
          title: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
