import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'My Clock',
  home: HomeScreen(),
));

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  HomeScreenState();
  currentTime(){
    return "${DateTime.now().hour}:${DateTime.now().minute}";
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Clock',style: TextStyle(
          color: Colors.lightGreen
        ),),),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.lightGreen,
                child: Container(
                  width: 350,
                  height: 350,
                  child:Center(
                    child: Text(currentTime(),style: TextStyle(
                      fontSize: 100.0,
                      color: Colors.black,
                  )
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}