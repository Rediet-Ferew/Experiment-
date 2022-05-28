import 'package:erdata_app/routing.dart';
import 'package:flutter/material.dart';
import 'layoutbbuilder.dart';
import 'theme.dart';


void main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      home: HomeAnother(),
    );
  }
}