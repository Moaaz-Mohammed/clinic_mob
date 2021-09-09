
import 'package:clinic_mob/Widgets/loading_page.dart';
import 'package:clinic_mob/Widgets/show_patient_card_item.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ShowPatientScreen extends StatelessWidget {
  const ShowPatientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patients List',style: TextStyle(color:Colors.blueGrey),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },
            icon:Icon(Icons.arrow_back_ios,color: Colors.blueGrey,)),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection(Constants.patientCollection)
              .orderBy(Constants.patientId, descending: true)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var patientData = snapshot.data!.docs;
              return ListView.builder(
                padding: const EdgeInsets.all(20.0),
                itemCount: patientData.length,
                itemBuilder: (context, index) {
                  return ShowPatientCardItem(
                    patientData: patientData,
                    index: index,
                  );
                },
              );
            } else {
              return LoadingPage();
            }
          }),
    );
  }
}
