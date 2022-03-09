import 'package:flutter/material.dart';
import 'package:atxcoin/home pages/card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:atxcoin/loading.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  List<SecureCard> secureC = [
    SecureCard(text: "Never Share your OTP, Passwords or account details with anyone"),
    SecureCard(text: "Use a strong password that you have not used anywhere else"),
    SecureCard(text: "Enable Google authenticator two step verification for your account"),
    SecureCard(text: "Never transfer money to anyone claiming to be from CoinDCX"),
    SecureCard(text: "Always logout before sharing your phone/laptop with anyone else"),

  ];
  String Name = "Anurag";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Text("Hi $Name ️👋"
              ,style: TextStyle(
                    color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Adcard("Carousel1.png",'https://support.coindcx.com/hc/en-gb/articles/4410791385231-How-can-I-deposit-INR-in-my-account-'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Adcard("Carousel2.png",'https://cleartax.in/s/cryptocurrency-taxation-guide#:~:text=Budget%202022%20Update%3A%20Income%20from,be%20levied%20above%20the%20threshold.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Adcard("Carousel3.png",'https://blog.coindcx.com/product-tutorials/limit-orders-in-crypto-trading/#:~:text=To%20avail%20Limit%20Order%2C%20they,price%20to%20INR%2035%2C00%2C000.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Adcard("Carousel4.png",'https://support.coindcx.com/hc/en-gb/articles/360002940696-How-to-add-price-alerts-for-cryptocurrencies-on-CoinDCX-#:~:text=You%20can%20either%20click%20on,alert%20you%20wish%20to%20set.'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Newly launched on ATXCoin",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: Text(
                "Explore more assets for your portfolio.",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                  SizedBox(width: 12,),
                  Coincard(name: "Bitcoin", symbol: "BTC", imageurl: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "Ethereum", symbol: "ETH", imageurl: "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880", price: 203890.0, change: 9057.39, changePercentage: 4.64881),
                  SizedBox(width: 12,),
                  Coincard(name: "tether", symbol: "usdt", imageurl: "https://assets.coingecko.com/coins/images/325/large/Tether-logo.png?1598003707", price: 20000, change: 500, changePercentage: -1.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "binancecoin", symbol: "BNB", imageurl: "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1644979850", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
              ],
          ),
          ),
          const SizedBox(
              height: 10,
            ),
            SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Top Gainers",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: Text(
                "Coins that have gained the most in 24 hours.",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  Coincard(name: "Bitcoin", symbol: "BTC", imageurl: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "Ethereum", symbol: "ETH", imageurl: "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880", price: 203890.0, change: 9057.39, changePercentage: 4.64881),
                  SizedBox(width: 12,),
                  Coincard(name: "tether", symbol: "usdt", imageurl: "https://assets.coingecko.com/coins/images/325/large/Tether-logo.png?1598003707", price: 20000, change: 500, changePercentage: -1.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "binancecoin", symbol: "BNB", imageurl: "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1644979850", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Top Losers",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: Text(
                "Coins that have corrected the most in 24 hours",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  Coincard(name: "Bitcoin", symbol: "BTC", imageurl: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "Ethereum", symbol: "ETH", imageurl: "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880", price: 203890.0, change: 9057.39, changePercentage: 4.64881),
                  SizedBox(width: 12,),
                  Coincard(name: "tether", symbol: "usdt", imageurl: "https://assets.coingecko.com/coins/images/325/large/Tether-logo.png?1598003707", price: 20000, change: 500, changePercentage: -1.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "binancecoin", symbol: "BNB", imageurl: "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1644979850", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
                  ],
              ),
            ),
            SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Popular among new investors",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: Text(
                "Most popular coins bought by first time investors",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  Coincard(name: "Bitcoin", symbol: "BTC", imageurl: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "Ethereum", symbol: "ETH", imageurl: "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880", price: 203890.0, change: 9057.39, changePercentage: 4.64881),
                  SizedBox(width: 12,),
                  Coincard(name: "tether", symbol: "usdt", imageurl: "https://assets.coingecko.com/coins/images/325/large/Tether-logo.png?1598003707", price: 20000, change: 500, changePercentage: -1.73094),
                  SizedBox(width: 12,),
                  Coincard(name: "binancecoin", symbol: "BNB", imageurl: "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1644979850", price: 2905664.0, change: 77242.0, changePercentage: 2.73094),
                  SizedBox(width: 12,),
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Crypto Made Easy",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: Text(
                "Crypto concepts simplified with ATX learn",
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  LearnCard("Learncard1.png",'https://courses.dcxlearn.com/p/blockchain-and-cryptocurrency-the-basics'),
                  SizedBox(width: 12,),
                  LearnCard("Learncard2.png",'https://www.youtube.com/watch?v=d7zr31RhAew'),
                  SizedBox(width: 12,),
                  LearnCard("Learncard3.png",'https://courses.dcxlearn.com/p/blockchain-and-cryptocurrency-an-extensive-guide/'),
                  SizedBox(width: 12,),
                  LearnCard("Learncard4.png",'https://youtu.be/dQw4w9WgXcQ'),
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Security Tips",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 10),
              child: Text(
                "Keep your Account safe by following these quick tips",
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: secureC.map((sec_card) => SecutiryCards(sec_card: sec_card)).toList() ,
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}




class SecureCard {
  String text;
  SecureCard({required this.text});
}



class SecutiryCards extends StatelessWidget {
  final SecureCard sec_card;
  SecutiryCards({required this.sec_card});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.tealAccent[400],
            borderRadius: BorderRadius.circular(5),
          ),
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 5.0, 0.0),
        child: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.security_rounded,color: Colors.white,),
              SizedBox(height: 10,),
              Text(
              sec_card.text,
                style: TextStyle(
                fontSize: 18.0, color: Colors.white,
                  ),
                  ),
            ],
          ),
    ),
    );
  }
}

class Adcard extends StatelessWidget {
  String image_location;
  String aurl;
  Adcard(this.image_location,this.aurl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 360,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
        image: AssetImage("assets/$image_location"),
        fit: BoxFit.cover,
        ),
      ),
    ),
    onTap: () async{
        final url = aurl;
        if (await canLaunch(url)){
          await launch(url,
          forceWebView: true,
          forceSafariVC: true,
          enableJavaScript: true);
        }
    }
    );
  }
}



class LearnCard extends StatelessWidget {
  String imagel;
  String lurl;
  LearnCard(this.imagel,this.lurl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
          image: AssetImage("assets/$imagel"),
          fit: BoxFit.cover,
      ),
        ),
      ),
        onTap: () async{
          final url = lurl;
          if (await canLaunch(url)){
            await launch(url,
                forceWebView: true,
                forceSafariVC: true,
                enableJavaScript: true);
          }
        }
    );
  }
}


