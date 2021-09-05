import 'package:flutter/material.dart';

class AddPatientCustomTextFormField extends StatelessWidget {
  const AddPatientCustomTextFormField({
    Key? key,
    required this.controller,
    required this.hint,
    required this.validator,
    this.minlines,
    this.maxlines,
  });

  final validator;
  final controller;
  final hint;
  final minlines;
  final maxlines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minlines,
      maxLines: maxlines,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hint,
      ),
    );
  }
}
