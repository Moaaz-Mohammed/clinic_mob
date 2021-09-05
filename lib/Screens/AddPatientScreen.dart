import 'package:clinic_mob/Screens/HomeScreen.dart';
import 'package:clinic_mob/Widgets/CustomDialog.dart';
import 'package:clinic_mob/Widgets/add_patient_custom_text_form_filed.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddPatientScreen extends StatelessWidget {
  const AddPatientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController diagnosesController = TextEditingController();
    TextEditingController treatmentController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController noteController = TextEditingController();

    var formKey = GlobalKey<FormState>();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Adding new patient',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 3.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width * 0.7,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(

                  ),
                  SizedBox(height: height * 0.03),
                  AddPatientCustomTextFormField(
                    hint: 'Name',
                    controller: nameController,
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    children: [
                      Expanded(
                        child: AddPatientCustomTextFormField(
                          hint: 'Age',
                          controller: ageController,
                          validator: (value){
                            if (value!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Expanded(
                        child: AddPatientCustomTextFormField(
                          hint: 'Phone',
                          controller: phoneController,
                          validator: (value){},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  AddPatientCustomTextFormField(
                    hint: 'Address',
                    controller: addressController,
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  AddPatientCustomTextFormField(
                    minlines: 4,
                    maxlines: 10,
                    hint: 'Diagnoses',
                    controller: diagnosesController,
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  AddPatientCustomTextFormField(
                    minlines: 4,
                    maxlines: 10,
                    hint: 'Treatment',
                    controller: treatmentController,
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  AddPatientCustomTextFormField(
                    hint: 'Note',
                    controller: noteController,
                    validator: (value){},
                  ),
                  SizedBox(height: height * 0.03),
                  Container(
                    width: width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextButton(
                      onPressed: (){
                        if (formKey.currentState!.validate()) {
                          final firestoreInstance =
                              FirebaseFirestore.instance;
                          firestoreInstance.collection("Patients").add({
                            "name": nameController.text,
                            "age": ageController.text,
                            "phone": phoneController.text,
                            "address": addressController.text,
                            "diagnoses": diagnosesController.text,
                            "treatment": treatmentController.text,
                            "time": DateTime.now().toLocal(),
                          }).then((value)=> showDialog(context: context, builder: (context)=>CustomDialog(
                            title: 'Data Saved Successfully!',
                          ))).then((value) =>  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())));
                        }
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
