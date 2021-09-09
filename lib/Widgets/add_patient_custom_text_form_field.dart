import 'package:flutter/material.dart';

class AddPatientCustomTextFormField extends StatelessWidget {
  const AddPatientCustomTextFormField({
    Key? key,
    required this.controller,
    required this.title,
    this.maxLine = 1,
  });

  final controller;
  final title;
  final maxLine;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return '$title Required';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      maxLines: maxLine,
    );
  }
}
