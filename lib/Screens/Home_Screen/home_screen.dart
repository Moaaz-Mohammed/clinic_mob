import 'package:clinic_mob/Screens/services_screen/add_patient_screen.dart';
import 'package:clinic_mob/Screens/services_screen/profile_admin_screen.dart';
import 'package:clinic_mob/Screens/services_screen/show_patient_screen.dart';
import 'package:clinic_mob/Widgets/home_screen_card_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Clinic Home',style: TextStyle(color:Colors.blueGrey),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeScreenCardItem(
            title: 'Add Patient',
            onTap: () {
              Constants.navigatorPush(
                screen: AddPatientScreen(),
                context: context,
              );
            },
            icon: Icons.add,
          ),
          HomeScreenCardItem(
            title: 'Patients',
            icon: Icons.people,
            onTap: () {
              Constants.navigatorPush(
                screen: ShowPatientScreen(),
                context: context,
              );
            },
          ),
          Row(
            children: [
              HomeScreenCardItem(
                title: 'Profile',
                icon: Icons.person,
                onTap: () {
                  Constants.navigatorPush(
                    screen: ProfileAdminScreen(),
                    context: context,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
