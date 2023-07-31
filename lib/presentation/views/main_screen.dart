import 'package:avatar_course2_4/core/resources/manager_strings.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(ManagerStrings.appName),
      ),
    );
  }
}
