import 'package:flutter/material.dart';

class Coinpage extends StatelessWidget {
  String name;
  String symbol;
  String imageurl;
  double price;
  double change;
  double changePercentage;
  Coinpage(
      {required this.name, required this.symbol, required this.imageurl, required this.price,
        required this.change, required this.changePercentage});

//   @override
//   _CoinpageState createState() => _CoinpageState();
// }
//
// class _CoinpageState extends State<Coinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text(""
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey[900],
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: (){},
            tooltip: "Price Alert",
          ),
          IconButton(
            icon: Icon(Icons.remove_red_eye_outlined),
            onPressed: (){},
            tooltip: "WATCHLIST",
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            SizedBox(height: 10.0),
            Text(
              '$name($symbol)',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            Row(
              children: [
                Text(
                  '₹$price',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  '$changePercentage%',
                  style: TextStyle(
                    color: changePercentage.toDouble() < 0 ? Colors.red : Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  '$change',
                  style: TextStyle(
                    color: change.toDouble() < 0 ? Colors.red : Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'Coin Performance',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              children: [
                Row(
                  children: [
                    Text("MarketCap",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),),
                    Spacer(),
                    Text("mcap")
                  ],
                ),
                Divider(
                  height: 8,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Text("24H High",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),),
                    Spacer(),
                    Text("24 h high")
                  ],
                ),
                Divider(
                  height: 8,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Text("24H Low",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),),
                    Spacer(),
                    Text("24 h Low")
                  ],
                ),
                Divider(
                  height: 8,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Text("Circulating Supply",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),),
                    Spacer(),
                    Text("csupply")
                  ],
                ),
                Divider(
                  height: 8,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Text("Max Supply",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                      ),),
                    Spacer(),
                    Text("msupply")
                  ],
                ),
              ],
            )
              ],
            ),
        ),
      );
  }
}
