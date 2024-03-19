import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE1F2FF),
          title: Center(
            child: Text(
              'Payment Method',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.local_shipping),
                          Expanded(
                            child: Container(
                              height: 1.0,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.payment),
                          Expanded(
                            child: Container(
                              height: 1.0,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.rate_review),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping'),
                          Text('Payment'),
                          Text('Review'),
                        ],
                      ),
                      SizedBox(height: 20), // Add spacing
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/mscard.png",
                                      width: 70,
                                      height: 70,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'MasterCard ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            value:
                                true, // Set the initial value of the checkbox
                            onChanged: (newValue) {
                              // Handle checkbox changes here
                            },
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            shape: CircleBorder(),
                            visualDensity: VisualDensity.compact,
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/paypal.webp",
                                      width: 70,
                                      height: 70,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'paypal',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            value: false,
                            onChanged: (newValue) {},
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            shape: CircleBorder(),
                            visualDensity: VisualDensity.compact,
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                                (states) {
                              if (states.contains(MaterialState.selected)) {
                                return Colors.blue;
                              }
                              return Colors.white;
                            }),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/google-pay.png",
                                      width: 60,
                                      height: 60,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      'Google Pay',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            value: false,
                            onChanged: (newValue) {},
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            shape: CircleBorder(),
                            visualDensity: VisualDensity.compact,
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                                (states) {
                              if (states.contains(MaterialState.selected)) {
                                return Colors.blue;
                              }
                              return Colors.white;
                            }),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Holder Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 8.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter Card Holder Name',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 8.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Number',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 8.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: '123 1234 1234 1234',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 8.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expiry Date',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8.0),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'MM/YY',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20, width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CVV',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 8.0),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: '123',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 8.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          primary: Color(0xFF1B51B8),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                        ),
                        child: Text(
                          'Confirm Payment',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]))));
  }
}
