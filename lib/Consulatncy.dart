import 'package:flutter/material.dart';

class Consultancy extends StatefulWidget {
  const Consultancy({super.key});

  @override
  State<Consultancy> createState() => _ConsultancyState();
}

class _ConsultancyState extends State<Consultancy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1F2FF),
        title: Center(
          child: Text(
            'Consultancy',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Your Recent Bookings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 8),
                          Text(
                            'Dr. Shubam Choudhary',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 15),
                          Icon(Icons.calendar_month),
                          SizedBox(width: 8),
                          Text(
                            "14th November",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 8),
                          Text(
                            "11:30 PM",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2.5,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book New Consultancy",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle online section tap
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF1B51B8), // Active color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              side: BorderSide(color: Colors.black, width: 2),
                            ),
                          ),
                          child: Text("Online",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle offline section tap
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Inactive color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                side: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                            child: Text("Offline",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Full Name',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Email',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '+91 |   Enter Your Phone Number',
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Date ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ' Date of Appointment',
                            // icon: Icon(Icons.calendar_month),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 8.0),
                            suffixIcon: Icon(Icons.calendar_month),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Time Slot ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Time',
                            // icon: Icon(Icons.calendar_month),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 8.0),
                            suffixIcon: Icon(Icons.access_time),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Choose Your Doctor ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Name of doctor',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 8.0),
                            suffixIcon: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(380, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          primary: Color(0xFF1B51B8),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
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
