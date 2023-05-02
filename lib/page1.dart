import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/calcu.dart';
import 'package:untitled/clock.dart';


class Page1 extends StatelessWidget {
  static final String id="Page1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('TRIPLEC',style: TextStyle(
          color: Colors.blue,fontSize: 25,
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple,Colors.blue,Colors.pinkAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: ListTile(
                  leading: Icon(Icons.calculate_outlined,color: Colors.white,size: 40,),
                  title: Text('CALCULATOR',style: TextStyle(
                    color: Colors.white,fontSize: 50,
                  ),),
                  onTap: ()=>{Navigator.pushNamed(context, 'Calcu')},
                ),color: Colors.black26,),
              SizedBox(height: 20,),
              Container(
                child: ListTile(
                  leading: Icon(Icons.calendar_today_outlined,color: Colors.white,size: 40,),
                  title: Text('CALENDER',style: TextStyle(
                    color: Colors.white,fontSize: 50,
                  ),),
                  onTap: ()=>{Navigator.pushNamed(context, 'Calend')},
                ),
                color: Colors.black26,),
              SizedBox(height: 20,),
              Container(
                child: ListTile(
                  leading: Icon(Icons.lock_clock,color:Colors.white,size: 40,),
                  title: Text('CLOCK',style: TextStyle(
                    color: Colors.white,fontSize: 50,
                  ),),
                  onTap: ()=>{Navigator.pushNamed(context, 'Clock')},
                ),color: Colors.black26,),
            ],
          ),
        ),
      ),
    );
  }
}
