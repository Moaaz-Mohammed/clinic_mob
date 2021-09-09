
import 'package:clinic_mob/Widgets/show_patient_info_alert_dialog.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ShowPatientCardItem extends StatelessWidget {
  const ShowPatientCardItem({
    Key? key,
    required this.patientData,
    required this.index,
  });

  final patientData;
  final index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return ShowPatientInfoAlertDialog(
                  patientData: patientData[index],
                );
              },
            );
          },
          borderRadius: BorderRadius.circular(10.0),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            leading: Icon(
              Icons.person,
            ),
            title: Text(
              patientData[index][Constants.patientName],
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            trailing: Text(
              'show more >',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
