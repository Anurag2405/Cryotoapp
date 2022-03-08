import 'package:flutter/material.dart';

class About_me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Anurag Thakur"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Text("About"),
    );
  }
}