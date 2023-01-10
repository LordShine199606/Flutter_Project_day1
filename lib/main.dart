import 'package:first_project_text/views/BottomNavigation/nav_bar.dart';
import 'package:first_project_text/views/pages/page_inicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
theme: ThemeData(fontFamily: 'GothamLight'),
    home: NavBar(),
    );
  }
}
