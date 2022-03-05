import 'package:flutter/material.dart';
import 'package:atxcoin/pages/home.dart';
import 'package:atxcoin/pages/prices.dart';
import 'package:atxcoin/pages/orders.dart';
import 'package:atxcoin/pages/my_investments.dart';
import 'package:atxcoin/pages/account.dart';
import 'package:atxcoin/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/home",
  routes: {
    "/": (context) => Loading(),
    '/home': (context) => Mainpage(),
  },
));
//


class Mainpage extends StatefulWidget {
  // const Mainpage({Key? key}) : super(key: key);
  // List<Coin> coins;
  // Mainpage({this.coins});
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List data = [];
  int currentIndex = 0;
  final screens = [
    Home(),
    Prices(),
    Orders(),
    MyInvestments(),
    Account()
  ];
  String user_name = "Anurag Thakur";
  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context).settings.arguments;
    // print(data);
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index)  => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.black,
        selectedItemColor: Colors.indigo[400],
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: "prices",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows),
            label: "orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: "Investments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}