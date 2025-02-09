import 'package:cardui/DashBoard.dart';
import 'package:cardui/components/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: AppColors.primaryBg
    ),
      title: 'BillDashBoard UI',
    home: Dashboard(),
    );
  }
}

 