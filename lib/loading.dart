import 'package:atxcoin/main.dart';
import 'package:flutter/material.dart';
import 'package:atxcoin/services/fetch_data.dart';
import 'package:atxcoin/services/cryptocurrency.dart';
import 'main.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void gettingCoinlist() async {
    List<Coin> coins = [];
    apiService instance = apiService();
    coins = await instance.fetchCoin();
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Mainpage());
  }

  @override
  void initState() {
    super.initState();
    gettingCoinlist();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}




