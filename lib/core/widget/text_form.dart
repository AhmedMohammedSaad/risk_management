import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm({super.key, required this.lableText, required this.controller});
  final TextEditingController controller;
  final GlobalKey _key = GlobalKey();
  final String lableText;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          labelText: lableText, // Adds a label to the field
          border:
              OutlineInputBorder(), // Adds an outline border around the field
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue, width: 2.0), // Border color when enabled
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.green, width: 2.0), // Border color when focused
          ),
        ),
      ),
    );
  }
}
