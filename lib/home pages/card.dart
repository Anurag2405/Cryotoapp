import 'package:flutter/material.dart';
class Coincard extends StatefulWidget {
  const Coincard({Key? key}) : super(key: key);

  @override
  _CoincardState createState() => _CoincardState();
}

class _CoincardState extends State<Coincard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579"),
              radius: 20.0,
            ),
            SizedBox(height: 10.0,),
            Text(
              "BitCoin",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
            "₹3310899"
            ),
            SizedBox(height: 5.0,),
            Text(
                "-0.31%",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
      )
    );
    }
}
