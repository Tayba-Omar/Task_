import 'package:flutter/material.dart';

class Textformfiled extends StatelessWidget {
  String lbl;
  String hint;
  IconData preIcon;
  IconData? suffIcon;
  String? Function(String?)? toCheck;


  Textformfiled({required this.lbl,
    required this.hint,
    required this.preIcon,
    this.suffIcon,
    this.toCheck
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: toCheck,
      decoration: InputDecoration(
          label: Text(lbl),
          hintText: hint,
          prefixIcon: Icon(preIcon),
          suffixIcon: Icon(suffIcon),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange.shade200,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.orange.shade500,
                  width: 4
              ),
              borderRadius: BorderRadius.circular(20),

      )

      ),

    );
  }
}
