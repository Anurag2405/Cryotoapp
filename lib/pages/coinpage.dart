import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text(""
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.grey[100],
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
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '$name($symbol)',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    color: changePercentage.toDouble() < 0 ? Colors.redAccent : Colors.greenAccent[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  '$change',
                                  style: TextStyle(
                                    color: change.toDouble() < 0 ? Colors.redAccent : Colors.greenAccent[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 30.0),
                        Text(
                          'Coin Performance',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
                                    fontWeight: FontWeight.bold,
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
                                    fontWeight: FontWeight.bold,
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
                                    fontWeight: FontWeight.bold,
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
                                    fontWeight: FontWeight.bold,
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
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Spacer(),
                                Text("msupply")
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Buy'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.greenAccent[400],
                                  minimumSize: Size(150, 40),
                                ),
                              ),
                              // Spacer(),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Sell'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.redAccent,
                                  minimumSize: Size(150, 40),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
