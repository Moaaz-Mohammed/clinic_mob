
import 'package:clinic_mob/Models/patient_model.dart';
import 'package:clinic_mob/Services/store.dart';
import 'package:clinic_mob/Widgets/add_patient_custom_text_form_field.dart';
import 'package:clinic_mob/Widgets/loading_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AddPatientScreen extends StatelessWidget {
  const AddPatientScreen({Key? key}) : super(key: key);
  // to define formkey and avoid disappearing the keyboard
 static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController diagnosesController = TextEditingController();
    TextEditingController treatmentController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController noteController = TextEditingController();

    Store _store = Store();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding Patient',style: TextStyle(color:Colors.blueGrey),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },
        icon:Icon(Icons.arrow_back_ios,color: Colors.blueGrey,)),
      ),
      body: StreamBuilder<QuerySnapshot>
            (
          stream: FirebaseFirestore.instance
              .collection(Constants.patientCollection)
              .orderBy(Constants.patientId, descending: true)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var numberId = snapshot.data!.docs.length;
              return Center(
                child: Container(
                  child: Form(
                    key: formKey,
                    child: ListView(
                      padding: const EdgeInsets.all(20.0),
                      children: [
                        Center(child: Text('Patient ID : ${numberId + 1}', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                        ),)),
                        SizedBox(height: height * 0.01),
                        AddPatientCustomTextFormField(
                          title: 'Name',
                          controller: nameController,
                        ),
                        SizedBox(height: height * 0.01),
                        Row(
                          children: [
                            Expanded(
                              child: AddPatientCustomTextFormField(
                                title: 'Age',
                                controller: ageController,
                              ),
                            ),
                            SizedBox(width: width * 0.02),
                            Expanded(
                              child: AddPatientCustomTextFormField(
                                title: 'Phone',
                                controller: phoneController,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.01),
                        AddPatientCustomTextFormField(
                          title: 'Address',
                          controller: addressController,
                        ),
                        SizedBox(height: height * 0.01),
                        AddPatientCustomTextFormField(
                          title: 'Diagnoses',
                          controller: diagnosesController,
                          maxLine: 2,
                        ),
                        SizedBox(height: height * 0.01),
                        AddPatientCustomTextFormField(
                          title: 'Treatment',
                          controller: treatmentController,
                          maxLine: 2,
                        ),
                        SizedBox(height: height * 0.01),
                        AddPatientCustomTextFormField(
                          title: 'Notes',
                          controller: noteController,
                          maxLine: 4,
                        ),
                        SizedBox(height: height * 0.01),
                        InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              _store.addPatient(
                                context,
                                PatientModel(
                                  CheckUpTime:DateTime.now().toLocal().toString(),
                                  patientId: numberId+1,
                                  patientName: nameController.text,
                                  patientAge: ageController.text,
                                  patientPhone: phoneController.text,
                                  patientAddress: addressController.text,
                                  patientDiagnoses: diagnosesController.text,
                                  patientTreatment: treatmentController.text,
                                  patientNotes: noteController.text,
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(
                              15.0,
                            ),
                            child: Text(
                              'Add a Patient',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return LoadingPage();
            }
          }),
    );
  }
}
