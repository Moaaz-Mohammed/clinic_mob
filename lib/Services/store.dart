
import 'package:clinic_mob/Models/patient_model.dart';
import 'package:clinic_mob/Screens/Home_Screen/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Store {
  /// object from FirebaseFirestore
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  addPatient(context, PatientModel patient) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Loading ...'),
                CircularProgressIndicator(),
              ],
            ),
          ),
        );
      },
    );

    fireStore.collection(Constants.patientCollection).doc().set({
      Constants.patientId: patient.patientId,
      Constants.patientName: patient.patientName,
      Constants.patientAge: patient.patientAge,
      Constants.patientPhone: patient.patientPhone,
      Constants.patientAddress: patient.patientAddress,
      Constants.patientTreatment: patient.patientTreatment,
      Constants.patientDiagnoses: patient.patientDiagnoses,
      Constants.patientNotes: patient.patientNotes,
    }).whenComplete(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Patient added successfully",
            style: TextStyle(fontFamily: 'custom_Font'),
          ),
        ),
      );
      Constants.navigatorPushAndRemove(
        context: context,
        screen: HomeScreen(),
      );
    });
  }
}
