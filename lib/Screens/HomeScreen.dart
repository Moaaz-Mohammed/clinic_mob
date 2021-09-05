import 'package:clinic_mob/Widgets/Drawer/CustomDrawer.dart';
import 'package:clinic_mob/Widgets/HomeWidgetCard.dart';
import 'package:flutter/material.dart';
import 'AddPatient.dart';
import 'SearchScreen.dart';

class HomeScreen extends StatelessWidget {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeWidgetCard(
                  width: width,
                  height: height,
                  text: 'Add Patient',
                  icon: Icons.add,
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddPatientScreen()));
                  },
                ),
                HomeWidgetCard(
                  width: width,
                  height: height,
                  text: 'Patients',
                  icon: Icons.group,
                  function: () {},
                ),
              ],
            ),
            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeWidgetCard(
                  width: width,
                  height: height,
                  text: 'Profile',
                  icon: Icons.person,
                  function: () {},
                ),
                HomeWidgetCard(
                  width: width,
                  height: height,
                  text: 'Search',
                  icon: Icons.search,
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                ),
              ],
            ),
          ],
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
