import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Anurag Thakur"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Text("Account Page"),
    );
  }
}
