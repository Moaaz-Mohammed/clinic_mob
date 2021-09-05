import 'package:flutter/material.dart';

class HomeWidgetCard extends StatelessWidget {
  const HomeWidgetCard({
    required this.width,
    required this.height,
    required this.text,
    required this.icon,
    required this.function,
  });
  final double width;
  final double height;
  final String text;
  final IconData icon;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: function,
      child: Container(
        width: width * 0.45,
        // height: height * 0.23,
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 1,
                offset: Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: width * 0.25,
                color: Colors.blueGrey,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: width * 0.06, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
