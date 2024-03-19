import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1F2FF),
        title: Center(
          child: Text(
            'Profile',
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
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                child: Image.asset("assets/images/imgshop1.png"),
              ),
              SizedBox(height: 10),
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.999,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Edit Profile"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text("Shipping Address"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text("Wishlist"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.history),
                      title: Text("Order History"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications_active_sharp),
                      title: Text("Notifications"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.credit_card_sharp),
                      title: Text("Cards"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.credit_card_rounded),
                      title: Text("Your Consultancies"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.black,
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                    ),
                    ListTile(
                      leading: Icon(Icons.credit_card_rounded),
                      title: Text("Your Courses"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
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
