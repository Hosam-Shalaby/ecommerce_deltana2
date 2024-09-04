// ignore_for_file: camel_case_types, must_be_immutable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key, this.label, this.onChange});
  String? label;
  Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
        ),
        validator: (data) {
          if (data!.isEmpty) {
            return 'Try Again';
          }
        },
        onChanged: onChange,
        textAlign: TextAlign.start,
        obscureText: false,
        decoration: InputDecoration(
          label: Text('$label'),
          labelStyle: const TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
