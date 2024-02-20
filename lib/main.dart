import 'package:flutter/material.dart';
import 'package:shouses/pages/detail_page.dart';
import 'package:shouses/pages/homepage.dart';
import 'package:shouses/widget/bottom_nav.dart';
import 'package:shouses/widget/build_shous.dart';
import 'package:shouses/widget/left.dart';
import 'package:shouses/widget/shous_Animate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   // home: DetailPage(),
      home: BottomNavBar(),
    );
  }
}