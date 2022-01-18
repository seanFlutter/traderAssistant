import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:traderassistant/presentation/constants/colors.dart';


///TextStyles
const kTextStyleWhite = TextStyle(
    fontFamily: 'Poppins',
    decoration: TextDecoration.none,
    color: Colors.white);

///Margin
const double commonMargin = 20;

///Input Decoration
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
  ),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(22.0)),
  // ),
  // enabledBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: Color(0xff535354), width: 1.0),
  //   borderRadius: BorderRadius.all(Radius.circular(22.0)),
  // ),
  // focusedBorder: OutlineInputBorder(
  //   borderSide: BorderSide(color: Color(0xff1aa1fb), width: 2.0),
  //   borderRadius: BorderRadius.all(Radius.circular(22.0)),
  // ),
);

///Toast Pop up
displayToast(String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: BrandColors.greyText,
      textColor: Colors.white,
      fontSize: 16.0);

}

