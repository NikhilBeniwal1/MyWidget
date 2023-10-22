import 'package:daily/Gride_View.dart';
import 'package:daily/MyChatApp.dart';
import 'package:daily/bmi.dart';
import 'package:daily/chat.dart';
import 'package:daily/chatapp.dart';
import 'package:daily/note_write.dart';
import 'package:daily/random.dart';
import 'package:daily/signup.dart';
import 'package:daily/simplecal.dart';
import 'package:daily/wall.dart';
import 'package:flutter/material.dart';
import 'package:daily/call.dart';
import 'package:daily/login.dart';
import 'package:daily/listgride.dart';
import 'package:daily/cstmcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      //home: BmiCalculator(),
      // home: SimpleCalculator(),
      //  home: SignUpScreen(),
      //home: WallP1(), // wallpaper app
      //   home: ChatApp(),
      //  home: Chat(),
      //  home: CstmCode(),
      //  home: ListandGride(), // list and gride   gpt way
      //  home: Gride1Notes(),
      //  home: RandomNo(),
      home: MyChatApp(),
    );
  }
}

class Homepage1 extends StatelessWidget {
  List<Map<String, dynamic>> listData = [
    {
      "name": "Programmer",
      "color": Colors.blue,
      "subTitle": "hello Programmer",
      "image": "assets/images/img4.jpg",
      "time": "10.10 am",
      "unread": "0",
    },
    {
      "name": "Developer",
      "color": Colors.red,
      "subTitle": "hello Developer",
      "image": "assets/images/img8.jpg",
      "time": "10.05 am",
      "unread": "6",
    },
    {
      "name": "Hacker",
      "color": Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "Hello.......",
      "image": "assets/images/img7.jpeg",
      "time": "10.03 am",
      "unread": "1",
    },
    {
      "name": "White hat hacker",
      "color": Colors.blueAccent,
      "subTitle": "Hello.......",
      "image": "assets/images/img3.jpeg",
      "time": "09.43 am",
      "unread": "2",
    },
    {
      "name": "Red hat hacker",
      "color": Colors.red,
      "subTitle": "Hello.......",
      "image": "assets/images/img1.jpeg",
      "time": "09.42 am",
      "unread": "0",
    },
    {
      "name": "Programmer",
      "color": Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "Hello.......",
      "image": "assets/images/img2.jpeg",
      "time": "09.42 am",
      "unread": "5",
    },
    {
      "name": "Ethical hacker",
      "color": Colors.pink,
      "subTitle": "hello......",
      "image": "assets/images/img1.jpeg",
      "time": "09.42 am",
      "unread": "6",
    },
    {
      "name": "Mr India Hacker",
      "color": Colors.blue,
      "subTitle": "hello.......",
      "image": "assets/images/img4.jpg",
      "time": "09.42 am",
      "unread": "0",
    },
    {
      "name": "Programmer",
      "color": Colors.red,
      "subTitle": "Hello......",
      "image": "assets/images/img8.jpg",
      "time": "09.42 am",
      "unread": "6",
    },
    {
      "name": "Hacker3",
      "color": Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "Hello.......",
      "image": "assets/images/img7.jpeg",
      "time": "09.42 am",
      "unread": "1",
    },
    {
      "name": "Ai",
      "color": Colors.blueAccent,
      "subTitle": "Hello.......",
      "image": "assets/images/img3.jpeg",
      "time": "09.42 am",
      "unread": "2",
    },
    {
      "name": "Coming soon",
      "color": Colors.red,
      "subTitle": "Hello.......",
      "image": "assets/images/img1.jpeg",
      "time": "09.42 am",
      "unread": "0",
    },
    {
      "name": "Developer",
      "color": Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "Hello.......",
      "image": "assets/images/img2.jpeg",
      "time": "09.42 am",
      "unread": "5",
    },
    {
      "name": "Ludo king",
      "color": Colors.pink,
      "subTitle": "Hello.......",
      "image": "assets/images/img1.jpeg",
      "time": "09.42 am",
      "unread": "6",
    },
  ];

// List<Widget> listWidget = [ ];

  @override
  Widget build(BuildContext context) {
/*for(String name in listData){
listWidget.add( Container(
  width: 140,
  height: 100,
  color: Colors.blue,
  child: Center(child: Text(name,style: TextStyle(fontSize: 25,color: Colors.white),)),
  margin: EdgeInsets.all(11),
)  );
}*/

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          //leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          backgroundColor: Color.fromRGBO(1, 92, 75, 100),
          title: Text(
            "Whatsapp",
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          // centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 28,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 28,
                )),
          ],
          toolbarHeight: 80,
          bottom: TabBar(
            indicatorColor: Colors.white,
            dividerColor: Colors.blueGrey,
            tabs: [
              Icon(
                Icons.groups,
                color: Colors.white,
              ),
              Text(
                "Chats",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Status",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Calls",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: listData.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(listData[index]["image"]),
                  maxRadius: 40,
                  minRadius: 5,
                ),
                title: Text(
                  listData[index]["name"],
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                subtitle: Text(
                  listData[index]["subTitle"],
                  style: TextStyle(fontSize: 24, color: Colors.grey.shade800),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    listData[index]["unread"] == "0"
                        ? Text(listData[index]["time"],
                            style: TextStyle(color: Colors.grey.shade800))
                        : Text(
                            listData[index]["time"],
                            style: TextStyle(
                              color: Color.fromRGBO(1, 92, 75, 100),
                            ),
                          ),
                    //Text(listData[index]["time"],style: TextStyle(color: Colors.green),),
                    SizedBox(
                      height: 5,
                    ),
                    listData[index]["unread"] == "0"
                        ? Container(
                            width: 0,
                          )
                        : Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(1, 92, 75, 100),
                            ),
                            height: 24,
                            width: 24,
                            child: Center(
                                child: Text(
                              listData[index]["unread"],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                  ],
                ),
              );
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Container(
          alignment: Alignment.center,
          height: 80,
          width: 80,
          margin: EdgeInsets.only(right: 48, bottom: 28),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.chat,
              color: Colors.white,
              size: 40,
            ),
            backgroundColor: Color.fromRGBO(1, 92, 75, 100),
          ),
        ),
      ),
    );
  }
}

/*Container(
    padding: EdgeInsets.symmetric(horizontal: 8),
    height: 120,
    color: listData[index]["color"],
    child: Row(
      children: [
        Image.asset(listData[index]["image"],height: 100,width: 100,),
        SizedBox(width: 5,),
        Column( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text( listData[index] ["name"] , style: TextStyle(fontSize: 24,color: Colors.white),),),
            Center(child: Text( listData[index] ["subTitle"] , style: TextStyle(fontSize: 24,color: Colors.white),),),
 ],
        ),
      ],
    ),
    margin: EdgeInsets.all(8),
  );*/ // maual list tile using container
/* SizedBox(

      height: 100,

      child:   ListView(
        scrollDirection: Axis.horizontal,
   children: listWidget
   ),
), */ // process with for loop function
/*ListView(

          scrollDirection: Axis.vertical,

          children: listData.map((name) => Container(

            height: 100,

            width: 150,

            color: Colors.blue,

            child: Center(child: Text(name,style: TextStyle(fontSize: 25,color: Colors.white),)),

            margin: EdgeInsets.all(11),

          ) ).toList()

      ),*/
