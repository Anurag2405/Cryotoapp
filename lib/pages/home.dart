import 'package:flutter/material.dart';
import 'package:atxcoin/home pages/card.dart';
import 'package:url_launcher/url_launcher.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Hi Anurag ️👋"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          SizedBox(height: 5.0,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Adcard("Carousel1.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Adcard("Carousel2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Adcard("Carousel3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Adcard("Carousel4.png"),
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
          SizedBox(height: 5.0,),
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
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
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
          SizedBox(height: 5.0,),
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
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
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
          SizedBox(height: 5.0,),
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
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
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
          SizedBox(height: 5.0,),
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
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
                SizedBox(width: 12,),
                Coincard(),
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
          SizedBox(height: 5.0,),
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
                LearnCard("Learncard1.png"),
                SizedBox(width: 12,),
                LearnCard("Learncard2.png"),
                SizedBox(width: 12,),
                LearnCard("Learncard3.png"),
                SizedBox(width: 12,),
                LearnCard("Learncard4.png"),
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
  Adcard(this.image_location);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
      image: AssetImage("assets/$image_location"),
      fit: BoxFit.cover,
      ),
    ),);
  }
}



class LearnCard extends StatelessWidget {
  String imagel;
  LearnCard(this.imagel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
        image: AssetImage("assets/$imagel"),
        fit: BoxFit.cover,
    ),
      ),
    );
  }
}


