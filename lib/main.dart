//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled/calcu.dart';
import 'package:untitled/calend.dart';
import 'package:untitled/page1.dart';
import 'package:untitled/clock.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Page1',
    routes: {
      'Page1':(context)=>Page1(),
      'Clock':(context)=>Clock(),
      'Calcu':(context)=>Calcu(),
      'Calend':(context)=>Calend(),

    },
  ));
}

