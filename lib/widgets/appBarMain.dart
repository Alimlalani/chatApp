import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context){
  return AppBar(
    backgroundColor: Colors.deepPurpleAccent,
    title: Image.asset("assets/images/Evonik-logo.png", width: 100,
    ),
  );
}

InputDecoration textStyleDecoration(String hintText){
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white54,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
);
}

TextStyle basicTextStyle (){
  return TextStyle(
    color: Colors.white,
  );
}

TextStyle mediumTextStyle(){
  return TextStyle(
    color: Colors.white,
    fontSize: 17,
  );
}
