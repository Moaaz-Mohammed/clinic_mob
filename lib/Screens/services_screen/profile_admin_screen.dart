
import 'package:clinic_mob/Widgets/profile_patient_card_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../constants.dart';

class ProfileAdminScreen extends StatelessWidget {
  const ProfileAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color:Colors.blueGrey),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },
            icon:Icon(Icons.arrow_back_ios,color: Colors.blueGrey,)),
      ),
      body: Center(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              Container(
                height: height * 0.5,
                child: ClipRRect(
                  child: Image.asset(
                    'images/profile_Image.jpeg'
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: height * 0.01,),
              ProfilePatientCardItem(
                title: 'الدكتور محمد عبدالعزيز',
              ),
              ProfilePatientCardItem(
                title: 'مدرس امراض المخ والأعصاب والعمود الفقري بكلية الطب ومستشفيات دار الفؤاد باالقاهره ماجستير الامراض العصبيه والنفسيه وفسيولوجيا الاعصاب ورسم العصب ',
              ),
              ProfilePatientCardItem(
                title: 'Vodafone: 01094783479',
              ),
              ProfilePatientCardItem(
                title: 'We: 01551447560',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
