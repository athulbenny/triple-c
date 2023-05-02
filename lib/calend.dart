import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calend extends StatefulWidget {
  @override
  _CalendState createState() => _CalendState();
}

class _CalendState extends State<Calend> {
  @override
  TextEditingController month =TextEditingController();
  TextEditingController year=TextEditingController();
  bool visib= false;
  String s="";int i=0,rem=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALENDER',style: TextStyle(
          color: Colors.yellowAccent,fontSize: 25,
        ),),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              /*TextFormField(autofocus: true,cursorHeight: 25,
                controller: month,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: 'mm',labelText: 'month',
                ),/*onChanged: (v){setState(() {
                    });
                    },*/
              ),
              TextFormField(autofocus: true,cursorHeight: 25,
                controller: year,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: 'yyyy',labelText: 'year',
                ),
              ),
              TextButton(child: Text('submit'),onPressed: (){
                setState((){
                  rem=Fun3(month,year);i=0;
                  visib= Fun1(month,year,visib);
                });
              },),
              //Text(i.toString()),
              SizedBox(height: 50,),
              Visibility(
                visible: visib,
                child: Table(
                  textDirection: TextDirection.ltr,
                  border: TableBorder.all(width: 1.0,color:Colors.black),
                  children: [
                    TableRow(
                      children: [
                        Text('SUNDAY'), Text('MONDAY'), Text('TUESDAY'), Text('WEDNESDAY'),
                        Text('THURSDAY'), Text('FRIDAY'),Text('SATURDAY')
                      ],
                    ),
                    TableRow(
                      children: [
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                      ],
                    ), TableRow(
                      children: [
                        Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()),
                        Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()),Text(((i+=1)-rem).toString()),
                      ],
                    ), TableRow(
                      children: [
                        Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()),
                        Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()),Text(((i+=1)-rem).toString()),
                      ],
                    ), TableRow(
                      children: [
                        Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()),
                        Text(((i+=1)-rem).toString()), Text(((i+=1)-rem).toString()),Text(((i+=1)-rem).toString()),
                      ],
                    ), TableRow(
                      children: [
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                        Visibility(visible : Fun2(i,rem), child: Text(((i+=1)-rem).toString()),),
                      ],
                    ),
                  ],
                ),),*/
              TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2023,1,1),
                  lastDay:  DateTime.utc(2023,12,30))
            ],
          ),
        ),
      ),
    );
  }
}


bool Fun1(month,year,visib){
  if(month.text.toString().length==2 && year.text.toString().length==4){
    visib=true;}
  else visib=false;
  return visib;
}

bool Fun2(i,rem){
  bool v;
  //if(i<0 || i>31){
  if(i<rem || i>30){
    v=false;
  }else v=true;
  return v;
}

int Fun3(m,y){
  m=m.text;y=int.parse(y.text);
  int yr,q=0,sum,mc=0,yc,rem;
  if(m=='01'){if(y%4==0) mc=6; else mc=0;}
  else if(m=='02'){if(y%4==0) mc=2; else mc=3;}
  else if(m=='03') mc=3;else if(m=='04') mc=6;
  else if(m=='05') mc=1;else if(m=='06') mc=4;else if(m=='07') mc=6;else if(m=='08') mc=2;
  else if(m=='09') mc=5;else if(m=='10') mc=0;else if(m=='11') mc=3;else if(m=='12') mc=5;print(mc);
  if(y>=1600 && y<=1699) yc=6;else if(y>=1700 && y<=1799) yc=4;else if(y>=1800 && y<=1899) yc=2;
  else if(y>=1900 && y<=1999) yc=0;else if(y>=2000) yc=6; else yc=0;print(yc);
  yr=y%100;print(yr);
  q=(yr/4).toInt();print(q);
  sum=1+yr+q+mc+yc;
  rem=sum%7;print(rem);//rem=0;
  return rem;
}