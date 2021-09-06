import 'package:clinic_mob/Widgets/RetieveDataCard.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PatientsScreen extends StatelessWidget {
  final PatientRef = FirebaseFirestore.instance.collection('Patients');
  final Stream<QuerySnapshot> _PatientsStream =
      FirebaseFirestore.instance.collection('Patients').snapshots();
  Stream collectionStream =
      FirebaseFirestore.instance.collection('Patients').snapshots();
  String? documentId;
  Query Patients = FirebaseFirestore.instance.collection('Patients');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Patients',
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
          body: StreamBuilder<QuerySnapshot>(
              stream: _PatientsStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  return ListTile(
                    title: Row(
                      children: [
                        Center(
                          child: RetieveDataCard(
                              name: '${data['name']}',
                              date: '${data['time']}',
                              id: '${data['id']}',
                              age: '${data['age']}',
                              phone: '${data['phone']}',
                              address: '${data['address']}',
                              treatment: '${data['treatment']}',
                              diagnoses: '${data['diagnoses']}',
                              note: '${data['note']}'),

                        ),
                      ],
                    ),
                  );
                }).toList());
              })),
    );
  }
}
//Delete a document from firebase collection button
// TextButton(
// child: Row(
// children: [
// Text('Delete Patient'),
// Icon(Icons.delete)
// ],
// ),
// onPressed: () {
// FirebaseFirestore.instance
//     .collection('Patients')
//     .doc(document.id)
//     .delete()
//     .then((value) => print('Deleted Successfully!'));
// },
// ),
