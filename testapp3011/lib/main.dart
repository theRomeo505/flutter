import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  Color c;
  MyHomePage({this.c});
  @override
  _MyHomePageState createState() => _MyHomePageState(c:Colors.white);
}

class _MyHomePageState extends State<MyHomePage> {
  Color c;
  _MyHomePageState({this.c});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Material(color: c,child: InkWell(onTap:(){
      var rnd=new Random();
      var r=rnd.nextInt(255);
      var b=rnd.nextInt(255);
      var g=rnd.nextInt(255);
      setState(() {
        c=Color.fromARGB(255, r, g, b);

      });
    },child: Center(child: Text("Hey there",style: TextStyle(color: Color.fromARGB(255, (c.red+128)%256, (c.green+128)%256, (c.blue+128)%256),fontSize: 26),)),)));
  }
}
