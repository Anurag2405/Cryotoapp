import 'package:flutter/material.dart';

class Prices extends StatefulWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  _PricesState createState() => _PricesState();
}

class _PricesState extends State<Prices> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Prices"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          children: [
            SearchField(),
            Container(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.indigo[400],
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: "My Watchlist"),
                    Tab(text:"All Coins"),
                  ],
                ),
              ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      Sticky(),
                      Coin(name: "Bitcoin", symbol: "BTC", imageurl: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", price: 3152476, change: 3.56211,changePercentage: 4.24,),
                    ],
                  ),
                  Column(
                    children: [
                      Sticky(),
                      Coin(name: "Bitcoin", symbol: "BTC", imageurl: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", price: 3152476, change: -3.56211,changePercentage: 4.24),
                    ],
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


class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey,width: 1.0),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8.0,),
          Icon(Icons.search,color: Colors.grey,),
          const SizedBox(width: 8.0,),
          Expanded(
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search coins to invest...",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Sticky extends StatelessWidget {
  const Sticky({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 13,),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Text("COIN NAME",
                    style: TextStyle(color: Colors.grey, fontSize: 12),),
                ),
                Text(
                  "PRICE", style: TextStyle(color: Colors.grey, fontSize: 12),),
                SizedBox(width: 20,),
                Text("24H cHANGE",
                  style: TextStyle(color: Colors.grey, fontSize: 12),),
              ],
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}



class Coin extends StatelessWidget {
  Coin({required this.name,required this.symbol,required this.imageurl,required this.price,required this.change, required this.changePercentage});

  String name;
  String symbol;
  String imageurl;
  double price;
  double change;
  double changePercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                    radius: 18.0,
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          symbol,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          price.toDouble().toString(),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            change.toDouble().toString() +"%",
                            style: TextStyle(
                              color: change.toDouble() < 0 ? Colors.red : Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
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
