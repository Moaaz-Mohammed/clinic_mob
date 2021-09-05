import 'package:flutter/cupertino.dart';
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
        title: Text(
          'Adding New Patient',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(onTap:(){Navigator.pop(context);},child: Icon(Icons.arrow_back_ios, color: Colors.black)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                validator: (value)
                {
                  if(value!.isEmpty)
                    return 'Required Field';
                },
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height:height*0.01),
              Row(
                children:[
                  Expanded(
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value!.isEmpty)
                          return 'Required Field';
                      },
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Age',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Expanded(
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value!.isEmpty)
                          return 'Required Field';
                      },
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ]
              ),
              SizedBox(height:height*0.01),
              TextFormField(
                validator: (value)
                {
                  if(value!.isEmpty)
                    return 'Required Field';
                },
                controller: addressController,
                decoration: InputDecoration(
                  hintText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height:height*0.01),
              TextFormField(
                validator: (value)
                {
                  if(value!.isEmpty)
                    return 'Required Field';
                },
                controller:diagnosesController,
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Diagnoses',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height:height*0.01),
              TextFormField(
                validator: (value)
                {
                  if(value!.isEmpty)
                    return 'Required Field';
                },
                controller: treatmentController,
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Treatment',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height:height*0.01),
              TextFormField(
                validator: (value)
                {
                  if(value!.isEmpty)
                    return 'Required Field';
                },
                controller: noteController,
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Notes',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02,),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('SAVE',style: TextStyle(shadows:[BoxShadow(
                      color: Colors.white,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),],fontSize: 24,color:Colors.white,fontWeight: FontWeight.bold),),
                  )),
                  decoration: BoxDecoration(
                    color:Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border:Border.all(color:Colors.white,width: 3)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
