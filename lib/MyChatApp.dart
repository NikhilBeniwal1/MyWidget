import 'package:flutter/material.dart';

class MyChatApp extends StatefulWidget {
  const MyChatApp({super.key});

  @override
  State<MyChatApp> createState() => _MyChatAppState();
}

class _MyChatAppState extends State<MyChatApp> {
  var currentpage = DrawerSection.dashboard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyChatApp"),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [MyHeaderDrawer(), myDrawerList()],
          ),
        ),
      ),
    );
  }

//My Drawer List Code is here
  Widget myDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          // Menu list
          menuItem(1, "Dashboard", Icons.dashboard,
              currentpage == DrawerSection.dashboard ? true : false),
          menuItem(2, "mywallet", Icons.account_balance_wallet,
              currentpage == DrawerSection.mywallet ? true : false),
          menuItem(3, "Contacts", Icons.contacts,
              currentpage == DrawerSection.contacts ? true : false),
          menuItem(5, "Settings", Icons.settings,
              currentpage == DrawerSection.settings ? true : false),
          menuItem(6, "Privacy", Icons.privacy_tip,
              currentpage == DrawerSection.privacy_polcy ? true : false),
          menuItem(7, "Feedback", Icons.feedback,
              currentpage == DrawerSection.feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey.shade400 : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
            } else if (id == 2) {
              currentpage = DrawerSection.dashboard;
            } else if (id == 3) {
              currentpage = DrawerSection.mywallet;
            } else if (id == 4) {
              currentpage = DrawerSection.contacts;
            } else if (id == 5) {
              currentpage = DrawerSection.settings;
            } else if (id == 6) {
              currentpage = DrawerSection.privacy_polcy;
            } else if (id == 7) {
              currentpage = DrawerSection.feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                icon,
                color: Colors.black,
                size: 20,
              )),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// Drawer Section
enum DrawerSection {
  dashboard,
  mywallet,
  contacts,
  settings,
  privacy_polcy,
  feedback,
  about,
}

// My Header Drawer code is here
class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/img3.jpeg"))),
          ),
          Text(
            "Nikhil",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Text(
            "nbeniwal181@gmail.com",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}
