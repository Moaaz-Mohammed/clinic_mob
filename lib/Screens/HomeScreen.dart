import 'package:clinic_mob/Widgets/Drawer/CustomDrawer.dart';
import 'package:clinic_mob/Widgets/HomeWidgetCard.dart';
import 'package:flutter/material.dart';
import 'AddPatient.dart';
import 'SearchScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          iconTheme: IconThemeData(color: Colors.black, size: height * 0.04),
        ),
        body: Container(
          height: height,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeWidgetCard(
                            width: width,
                            height: height,
                            text: 'Add Patient',
                            icon: Icons.add,
                            function: () {
                              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>AddPatientScreen()));
                            }),
                        HomeWidgetCard(
                            width: width,
                            height: height,
                            text: 'Show Patients',
                            icon: Icons.group,
                            function: () {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeWidgetCard(
                            width: width,
                            height: height,
                            text: 'Profile',
                            icon: Icons.person,
                            function: () {}),
                        HomeWidgetCard(
                            width: width,
                            height: height,
                            text: 'Search',
                            icon: Icons.search,
                            function: () {}),
                      ],
                    ),
                  ],
                )),
          ),
          width: width,
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
