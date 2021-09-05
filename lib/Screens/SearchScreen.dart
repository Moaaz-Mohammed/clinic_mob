import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search'
          ),
        ),
      ),
    );
  }
}
