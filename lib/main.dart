import 'package:attendanceapp/screen_attendence.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: screenAttendence(),
    );
  }
}
