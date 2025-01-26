import 'package:flutter/material.dart';


bool emailValidation(email){
  String pattarn = r"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$";
  return RegExp(pattarn).hasMatch(email);
}

bool passValidation(email){
  String pattarn = r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$";
  return RegExp(pattarn).hasMatch(email);
}



