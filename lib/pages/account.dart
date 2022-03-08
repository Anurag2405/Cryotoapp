import 'addfunds.dart';
import 'package:flutter/material.dart';
import 'account_settings.dart';
import 'price_alerts.dart';
import 'about_me.dart';
class Account extends StatelessWidget {

  String full_Name = "Anurag Thakur";
  double balance = 10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("$full_Name"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[100],
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Available to Invest",
                                    style:TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                                  child: Text("₹$balance",
                                    style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => addFunds(),
                  )) ,
            ),
            Divider(
              color: Colors.white,
            ),
            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.person_outline_rounded),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Account Settings",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("Manage your Account,bank details",
                                    style:TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => Account_settings(),
                  )) ,
            ),
            Divider(
              color: Colors.black,
            ),
            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.add_box_outlined),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Price Alerts",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("Get notified on price action",
                                    style:TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => PriceAlert(),
                  )) ,
            ),
            Divider(
              color: Colors.grey[400],
            ),
            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.info_outline),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("About Me",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("My social media accounts and more",
                                    style:TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => About_me(),
                  )) ,
            ),
            Divider(
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("App version: 1.0.0"),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.indigo[400],
                    ),
                    onPressed: () {},
                    child: const Text('Logout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
