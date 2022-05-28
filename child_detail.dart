import 'dart:io';
import 'children.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class Child_Detail extends StatefulWidget {
  final Children child;
  const Child_Detail({ Key? key ,
  required this.child}) : super(key: key);


  @override
  State<Child_Detail> createState() => _Child_DetailState();
}

class _Child_DetailState extends State<Child_Detail> {
  final Children child = children[0];
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("name of child!"),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: _children_detail(child.id),
        ),
      ),
    );
  }

  Widget _children_detail(int index){
    // final List prefixes = ["Name: ", "Age: ", "Educatiool"]
    final Children child = children[index];
    return Stack(
      alignment: Alignment(1.0, 1.0),
    children:[
      Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
      margin: EdgeInsets.all(10),
      height: 250,
      width: double.maxFinite,
      
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(child.Image),
          fit:BoxFit.cover,     
          ),
      ),
      // child: CircleAvatar(
      //   backgroundImage: AssetImage("assets/child_1.jpg"),
      //   radius: 50,
      // ),
    ),
      ),
    Positioned(
      top: 220,
      right: 10,
      left: 10,
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        width: 300,
        height: 270,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
        child:Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
          children: <Widget>[
            Text(
            "Name: ${child.name}", 
            
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20),
            Text(
            "Age: ${child.age.toString()}",
            
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20),
            Text(
            "Education Level: ${child.Education_level}" ,
            
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20),
            Text(
            "Parent's Status: ${child.Parent_status}" ,
            
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 20),
            Text(
            "Short Story: ${child.Short_Story}",
            
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
          ),
        ),
        ),
         ),
      ),
    
      
      
    ], 
    
    );
  }
  
}