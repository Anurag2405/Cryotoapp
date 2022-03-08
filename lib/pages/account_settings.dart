import 'package:flutter/material.dart';

class Account_settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Account Settings"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Text("Account Settings"),
    );
  }
}