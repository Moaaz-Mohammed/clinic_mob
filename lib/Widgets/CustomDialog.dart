import 'package:clinic_mob/Screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AlertDialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/done.png',width: width * 0.3,),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Saved Successfully!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               InkWell(
                 onTap: ()
                 {
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>HomeScreen()));
                 },
                 child: Container(
                   child: Row(
                     children: [
                       Text('Back Home',style: TextStyle(color: Colors.white,fontSize: 18),),
                       SizedBox(width:5),
                       Icon(Icons.home,size: 26,color: Colors.white,)
                     ],
                   ),
                   padding: EdgeInsets.all(10),
                   decoration:BoxDecoration(
                     color:Colors.green,
                     borderRadius: BorderRadius.circular(10),
                   )
                 ),
               ),
               SizedBox(width: width * 0.02,),
               InkWell(
                 onTap:(){},
                 child: Container(
                   child: Row(
                     children: [
                       Text('Print',style: TextStyle(color: Colors.white,fontSize: 18),),
                       SizedBox(width:5),
                       Icon(Icons.print,size: 26,color: Colors.white,)
                     ],
                   ),
                   padding: EdgeInsets.all(10),
                   decoration:BoxDecoration(
                     color:Colors.green,
                     borderRadius: BorderRadius.circular(10),
                   )
                 ),
               ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
