import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Whatsapp new ui',
      theme: ThemeData(drawerTheme: DrawerThemeData( scrimColor: Colors.transparent)),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              //for upper ui button
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Messages',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ))
                    // for spacing
                    ,
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Online',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ))
                    // for spacing
                    ,
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Group',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ))
                    // for spacing
                    ,
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'More',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ))
                    // for spacing
                    ,
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              ),
            ],
          ),

//posined
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, right: 25, left: 25),
              height: 220,
              decoration: BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favoritte Contacts',
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildContactAvatar('Tanu', 'img1.jpeg'),
                          buildContactAvatar('Pallavi', 'img2.jpeg'),
                          buildContactAvatar('Nikhil', 'img3.jpeg'),
                          buildContactAvatar('Name', 'img4.jpg'),
                          buildContactAvatar('Name', 'img5.jpeg'),
                          buildContactAvatar('Name', 'img6.jpeg'),
                          buildContactAvatar('Name', 'img7.jpeg'),
                          buildContactAvatar('Name', 'img8.jpg'),
                        ],
                      )),
                ],
              ),
            ),
          ),

          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: ListView(
                  padding: EdgeInsets.only(left: 25),
                  children: [
                    buildConverationRow(
                        'Tanu', 'Hello, How are you', 'img1.jpeg', 0),
                    buildConverationRow(
                        'Pallavi', 'Hello, How are you', 'img2.jpeg', 1),
                    buildConverationRow(
                        'Nikhil', 'Hello, How are you', 'img3.jpeg', 2),
                    buildConverationRow(
                        'Name', 'Hello, How are you', 'img4.jpg', 4),
                    buildConverationRow(
                        'Name', 'Hello, How are you', 'img5.jpeg', 3),
                    buildConverationRow(
                        'Name', 'Hello, How are you', 'img6.jpeg', 5),
                    buildConverationRow(
                        'Name', 'Hello, How are you', 'img7.jpeg', 7),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: Color(0xFF27c1a9),
          child: const Icon(
            Icons.edit_outlined,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40))
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
            boxShadow: [BoxShadow(
              color: Colors.black,spreadRadius: 30,blurRadius: 30
            ),]
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        UserAvatar(filename: 'img3.jpeg'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Nikhil',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    DrawerItem(title: 'Account', icon: Icons.key),
                    DrawerItem(title: 'Chat', icon: Icons.chat_bubble),
                    DrawerItem(title: 'Notifications', icon: Icons.notifications),
                    DrawerItem(title: 'Data and storage', icon: Icons.storage),
                    DrawerItem(title: 'Help', icon: Icons.help),
                    Divider(
                      color: Colors.green,
                      height: 35,
                    ),
                    DrawerItem(title: 'Invite a friend', icon: Icons.people_outline),
        
                    
        
                  ],
                ),
             
             DrawerItem(title: 'Logout', icon: Icons.logout),
              ],
            ),
          ),
        ),
      ),
    ); //scaffold
  }

  Column buildConverationRow(
      String name, String message, String filename, int msgcount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  Text(
                    '16:35',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  if (msgcount > 0)
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF27c1a9),
                      child: Text(msgcount.toString(),
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ),
                ],
              ),
            )
          ],
        ),
        Divider(
          indent: 70,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}
