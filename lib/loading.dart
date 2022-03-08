import 'package:flutter/material.dart';
import 'package:atxcoin/services/fetch_data.dart';
import 'package:atxcoin/services/cryptocurrency.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);


  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List<Coin> coins = [];

  void gettingCoinlist() async {
    apiService instance = apiService();
    coins = await instance.fetchCoin();
    setState(() {});
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context) => Mainpage(coins)));
  }

  @override
  void initState() {
    super.initState();
    gettingCoinlist();
  }


  // logo url:  logomakr.com/app/3eTeV1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/logo.png'),),
              SizedBox(height: 40,),
              SpinKitWave(
                color: Colors.blue[900],
                size: 50.0,
              ),
            ],
          ),
        ),
      )
    );
  }
}




