import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10),
      child: Column
        (
        children:
        [
          CircleAvatar
            (
            radius: height * 0.06,
            backgroundImage: NetworkImage('https://styles.redditmedia.com/t5_31m8g/styles/communityIcon_ytz903nfwl211.png'),
            backgroundColor: Colors.transparent,
            ),
          SizedBox(height:height * 0.015),
          Text('Name Name',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.blueGrey),)
        ],
      ),
    );
  }
}
