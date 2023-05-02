import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  static final String id='Clock';
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  String i="";
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {

      });
    });
    super.initState();
  }
  //final v=DateTime.utc(2022,12,27);
  Widget build(BuildContext context) {
    DateTime now= DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('CLOCK',style: TextStyle(
          color: Colors.yellowAccent,fontSize: 25,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(now.day.toString(),style: TextStyle(
                  fontSize: 50),),
              SizedBox(width: 10,child: Text(':',style: TextStyle(fontSize: 45),),),
              Text(now.month.toString(),style: TextStyle(
                  fontSize: 50),),
              SizedBox(width: 10,child: Text(':',style: TextStyle(fontSize: 45),),),
              Text(now.year.toString(),style: TextStyle(
                  fontSize: 50),),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(now.hour.toString(),style: TextStyle(
                  fontSize: 50),),
              SizedBox(width: 10,child: Text(':',style: TextStyle(fontSize: 45),),),
              Text(now.minute.toString(),style: TextStyle(
                  fontSize: 50),),
              SizedBox(width: 10,child: Text(':',style: TextStyle(fontSize: 45),),),
              Text(now.second.toString(),style: TextStyle(
                  fontSize: 50),),
            ],
          ),
          SizedBox(height: 30,),
          FloatingActionButton(onPressed: (){setState(() {

          });},)
        ],
      ),
    );
  }
}
