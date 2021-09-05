import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PatientsScreen extends StatelessWidget {
  final PatientRef = FirebaseFirestore.instance.collection('Patients');
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('Patients').snapshots();
  Stream collectionStream = FirebaseFirestore.instance.collection('Patients').snapshots();
  String? documentId;
  Query Patients = FirebaseFirestore.instance.collection('Patients').orderBy('time', descending: false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
              children:
          [

          ]
          ),
        ),
      ),
    );
  }
}
