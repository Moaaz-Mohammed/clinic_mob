import 'package:clinic_mob/Screens/AddPatient.dart';
import 'package:flutter/material.dart';

import 'CustomDrawerHeader.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.7,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          CustomDrawerHeader(),
          Container(
            height: height*0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Profile
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(fontSize: width * 0.06),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  leading: Icon(Icons.person,size: width * 0.1,color: Colors.black,),
                  onTap: (){},
                ),
                //Patients
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Patients',
                        style: TextStyle(fontSize: width * 0.06),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  leading: Icon(Icons.group,size: width * 0.1,color: Colors.black,),
                  onTap: (){},
                ),
                //Add Patient
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add Patient',
                        style: TextStyle(fontSize: width * 0.06),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  leading: Icon(Icons.add,size: width * 0.1,color: Colors.black,),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddPatientScreen()));
                  },
                ),
                //Search
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(fontSize: width * 0.06),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  leading: Icon(Icons.search,size: width * 0.1,color: Colors.black,),
                  onTap: (){},
                ),
                SizedBox(height:height * 0.2),
                //Logout
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(fontSize: width * 0.06),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  leading: Icon(Icons.logout,size: width * 0.1,color: Colors.black,),
                  onTap: (){},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
