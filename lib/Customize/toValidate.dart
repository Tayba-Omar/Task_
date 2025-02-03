
import 'dart:ffi';

import 'package:flutter/material.dart';


bool emailValidation(email){
  String pattarn = r"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$";
  return RegExp(pattarn).hasMatch(email);
}

bool passValidation(pass){
  String pattarn = r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$";
  return RegExp(pattarn).hasMatch(pass);
}

bool uesrNameValidation(input){
  String pattern = r"[a-zA-Z][a-zA-Z0-9_]{2,15}";
  return RegExp(pattern).hasMatch(input);
}


