import 'package:flutter/material.dart';
import 'package:rideup/HOME.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.grey,
      canvasColor: Colors.grey
    ),
    home: Home(),
  ));
}