import 'package:flutter/material.dart';

class store extends StatefulWidget {
  const store({super.key});

  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1F2FF),
        title: Text(
          'Order Summary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Container(
              height: 45,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Icon(Icons.arrow_back_ios)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.white,
                ),
                child: Icon(Icons.shopping_bag_rounded),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFE1F2FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/imgshop1.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Your order has been placed successfully",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
                textAlign: TextAlign.center,
                "Thank you for choosing us! Feel free to continue shopping and explore our wide range of products.\n Happy Shopping! "),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Color(0xFF1B51B8) //
                ),
            child: Text(
              'Go back to homepage',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
