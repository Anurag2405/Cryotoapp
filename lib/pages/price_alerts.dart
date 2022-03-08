import 'package:flutter/material.dart';

class PriceAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Account Settings"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 50,color: Colors.grey[200],),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Price",
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1,color: Colors.indigo),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10,),
              Text("Current Price: Rs "),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Create Price Alert'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  minimumSize: Size.fromHeight(40),
                ),
              ),
              SizedBox(height: 10,),
          Container(
            child: Column(
              children: [
                SizedBox(height: 13,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("COIN NAME",
                        style: TextStyle(color: Colors.grey, fontSize: 12),),
                      Text(
                        "ALERT PRICE", style: TextStyle(color: Colors.grey, fontSize: 12),),
                    ],
                  ),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.grey[500],
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