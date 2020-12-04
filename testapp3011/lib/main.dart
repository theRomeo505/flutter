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

  List<TextSpan> m=[
    TextSpan(text:"h"),
    TextSpan(text:"e"),
    TextSpan(text:"l"),
    TextSpan(text:"l"),
    TextSpan(text:"o"),
    TextSpan(text:" "),
    TextSpan(text:"t"),
    TextSpan(text:"h"),
    TextSpan(text:"e"),
    TextSpan(text:"r"),
    TextSpan(text:"e"),
  ];
  List<String> word=["h","e","l","l","o"," ","t","h","e","r","e"];
  _MyHomePageState({this.c});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Material(color: c,child: InkWell(onTap:(){
      var rnd=new Random();
      var r=rnd.nextInt(256),r1;
      var b=rnd.nextInt(256),b1;
      var g=rnd.nextInt(256),g1;
      var d=(2*rnd.nextDouble());
      var o=d>1?d-1:d;
      List<TextSpan> m1=new List<TextSpan>();
      for (var i=0;i<11;i++)
        {
          r1=rnd.nextInt(256);
          b1=rnd.nextInt(256);
          g1=rnd.nextInt(256);

            m1.add(TextSpan(text: word[i],style: TextStyle(color:Color.fromRGBO(r1, g1, b1, 1))));
        }

      setState(() {
        //c=Color.fromARGB(255, r, g, b);
        c=Color.fromRGBO(r, g, b, o);
        m=m1;
      });

    },child: Center(child: RichText(
    text: TextSpan(children: m)
    )))));
  }
}
