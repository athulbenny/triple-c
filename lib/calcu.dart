import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calcu extends StatefulWidget {
  static final String id="Calcu";
  @override
  _CalcuState createState() => _CalcuState();
}

class _CalcuState extends State<Calcu> {
  @override
  List <int>num=[1,2,3,4,5,6,7,8,9,0];
  List <String>op= ['c','+','-','*','/','%','^','.','(',')','='];String s='';
  TextEditingController b1=TextEditingController(text:'');
  TextEditingController b2=TextEditingController(text:'');

  Widget build(BuildContext context) {
    int index=0,i=0;
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR',style: TextStyle(
          color: Colors.yellowAccent,fontSize: 25,
        ),),
      ),

      body: Container(
        color: Colors.grey[500],
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 4,
          children: [
            SizedBox(),
            TextFormField(controller: b1),SizedBox(),
            SizedBox(),SizedBox(),//SizedBox(),
            TextFormField(
                decoration: InputDecoration(fillColor: Colors.green),controller: b2),
            SizedBox(),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = '';b2.text='';
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(1.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(2.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(3.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(4.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(5.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(6.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(7.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(8.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(9.toString());
            });}, child: Text(num[index++].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(0.toString());
            });}, child: Text(num[index].toString())),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('+');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('-');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('*');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('/');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('%');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('^');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('.');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+('(');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){setState(() {
              b1.text = b1.text+(')');
            });}, child: Text(op[i++])),
            ElevatedButton(onPressed: (){
              s=b1.text;
              Parser p=Parser();
              Expression exp=p.parse(s);
              double eval = exp.evaluate(EvaluationType.REAL, ContextModel());
              print(eval);b2.text=eval.toString();
            }, child: Text(op[i])),

          ],
        ),
      ),
    );
  }
}
