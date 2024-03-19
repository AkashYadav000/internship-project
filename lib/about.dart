import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Container(
            height: 45,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Icon(Icons.arrow_back_ios),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE1F2FF),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/biofloc.jpg",
              height: 300,
              width: 420,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 260,
            left: 0,
            right: 0,
            child: Container(
              height: 800,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFE1F2FF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Bestseller',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "BioFlow Fish Farming",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.video_collection,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "32 Lessons",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(width: 25),
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          " Time Here",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  TabBar(
                    controller: _tabController,
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(width: 4.0, color: Color(0xFF1B51B8)),
                      insets: EdgeInsets.symmetric(horizontal: 70.0),
                    ),
                    labelColor: Color(0xFF1B51B8), // Selected tab text color
                    unselectedLabelColor:
                        Colors.black, // Unselected tab text color
                    tabs: [
                      Tab(
                          child: Text(
                        'About',
                        style: TextStyle(fontSize: 20),
                      )),
                      Tab(
                          child:
                              Text('Lessons', style: TextStyle(fontSize: 20))),
                      Tab(
                          child:
                              Text('Reviews', style: TextStyle(fontSize: 20))),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        // Content for About Tab

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "About Course",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "Quae cumque voluptatibus molestiae inventore Expedita repellat sint suscipit quam quae praesentium porro. iEt quam libero eaque laborumaut fuga omnis velit",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "Info",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Language",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  ),
                                  SizedBox(width: 135),
                                  Row(
                                    children: [
                                      Text("Subtitle",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 0),
                              child: Row(
                                children: [
                                  Text(
                                    "English",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  SizedBox(width: 160),
                                  Row(
                                    children: [
                                      Text("English,Hindi",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Level",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  ),
                                  SizedBox(width: 180),
                                  Row(
                                    children: [
                                      Text("Access",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 0),
                              child: Row(
                                children: [
                                  Text(
                                    "Beginner",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  SizedBox(width: 145),
                                  Row(
                                    children: [
                                      Text("Mobile,Desktop",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(380, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  primary: Color(0xFF1B51B8),
                                ),
                                child: Text(
                                  'Enroll Now',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Content for Lessons Tab
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "Lessons 32",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 10, right: 15),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Section 1: Introduction",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Text(
                                    "15 min",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),

                            // Four containers with rounded borders
                            for (int i = 1; i <= 4; i++)
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 10, right: 15),
                                child: Container(
                                  height: 100, // Decreased container height
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 10,
                                            ),
                                            child: CircleAvatar(
                                              radius: 20, // Increased radius
                                              backgroundColor:
                                                  Color(0xFF1B51B8),
                                              child: Text(
                                                i.toString(),
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 15),
                                          Expanded(
                                            child: Text(
                                              "BioFlow Fish Farming",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),

                                          // SizedBox(width: 10),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, right: 15),
                                            child: CircleAvatar(
                                              radius: 20, // Increased radius
                                              backgroundColor:
                                                  Color(0xFF1B51B8),
                                              child: Icon(Icons.play_arrow,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // SizedBox(height: 0),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: Text(
                                                "7:53", // Starting text
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ),
                                            Expanded(
                                              child: Slider(
                                                value: 7.53,
                                                min: 0,
                                                max: 10.0,
                                                activeColor: Color(0xFF1B51B8),
                                                onChanged: (value) {},
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 40),
                                              child: Text(
                                                "10:00", // Ending text
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),

                        // Content for Reviews Tab
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "Review 32",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            // Use a loop to create containers dynamically
                            for (int i = 0; i < 3; i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage: AssetImage(
                                              'assets/images/imgshop1.png'),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Name',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              '11 months ago',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              'Description goes here',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Row(
                                              children: [
                                                // Add your star rating widgets here
                                                Icon(Icons.star,
                                                    color: Colors.yellow),
                                                Icon(Icons.star,
                                                    color: Colors.yellow),
                                                Icon(Icons.star,
                                                    color: Colors.yellow),
                                                Icon(Icons.star,
                                                    color: Colors.yellow),
                                                Icon(Icons.star,
                                                    color: Colors.yellow),
                                                SizedBox(width: 5),
                                                Text(
                                                  '5.0',
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
