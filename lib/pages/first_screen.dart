import 'package:atxcoin/pages/login_screen.dart';
import 'package:atxcoin/pages/register_screen.dart';
import 'package:flutter/material.dart';
class firstScreen extends StatelessWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: Text('How to Flutter', style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 28
      //   ),) ,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body:
      SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/firstscreen.jpeg"),
                fit: BoxFit.cover,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 50,
                  child: Image(
                    image: AssetImage('assets/secondlogo.png'),
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
                      child: Text("Easiest way to invest in crypto ",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () => Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) => RegistrationScreen())) ,
                            child: const Text('Create Account',style: TextStyle(fontSize: 18),),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue[800],
                              minimumSize: Size(170, 50),
                            ),
                          ),
                          // Spacer(),
                          ElevatedButton(
                            onPressed: () => Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen())) ,
                            child: const Text('Log In',style: TextStyle(fontSize: 18),),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue[800],
                              minimumSize: Size(170, 50),
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
      ),
    );
  }
}
