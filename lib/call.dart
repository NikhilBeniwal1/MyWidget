import 'package:flutter/material.dart';
//Color.fromRGBO(1, 92, 75, 100),
class Call1 extends StatelessWidget {

  List<Map<String,dynamic>> listData = [
    { "name": "Programmer",
      "color":  Colors.blue,
      "subTitle": "hello",
      "image":    "assets/images/img4.jpg"
      ,"time":   "10.10 am"
      ,"unread": "0",
      "call_time": "Today,5:02 pm",
      "call_type": Icon(Icons.videocam_rounded,color: Colors.red,),
      "call_in_out": Icon(Icons.call_made,color: Colors.red,)

    },
    { "name": "Naveen",
      "color":  Colors.red,
      "subTitle": "xxyz",
      "image":    "assets/images/img8.jpg"
      ,"time":   "10.10 am"
      ,"unread": "6",
      "call_time": "Yesterday,1:02 pm",
      "call_type": Icon(Icons.call,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)


    },
    { "name": "Hacker",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle":  "its here",
      "image":    "assets/images/img7.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "1",
      "call_time": "5 October,11:02 pm",
      "call_type": Icon(Icons.videocam_rounded,color: Colors.red,),
      "call_in_out": Icon(Icons.call_received,color: Colors.red,),



    },
    { "name": "Hacker2",
      "color":  Colors.blueAccent,
      "subTitle": "this is the 2nd one",
      "image":    "assets/images/img3.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "2",
      "call_time": "2 October,10:02 pm",
      "call_type": Icon(Icons.call,color: Colors.red,),
      "call_in_out": Icon(Icons.call_made,color: Colors.red,),

    },
    { "name": "programmer",
      "color":  Colors.red,
      "subTitle": "Are you ...",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "0",
      "call_time": "1 October,5:10 pm",
      "call_type": Icon(Icons.videocam_rounded,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)

    },
    { "name": "Developer",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "its not good of you",
      "image":    "assets/images/img2.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "5",
      "call_time": "1 October,5:01 pm",
      "call_type": Icon(Icons.call,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)


    },
    { "name": "programmer",
      "color":  Colors.pink,
      "subTitle": "hello",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "6",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.videocam_rounded,color: Colors.red,),
      "call_in_out": Icon(Icons.call_received,color: Colors.red,)

    },
    { "name": "Developer",
      "color":  Colors.blue,
      "subTitle": "hello",
      "image":    "assets/images/img4.jpg"
      ,"time":   "10.10 am"
      ,"unread": "0",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.call,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)

    },
    { "name": "Hacker3",
      "color":  Colors.red,
      "subTitle": "hello..",
      "image":    "assets/images/img8.jpg"
      ,"time":   "10.10 am"
      ,"unread": "6",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.call,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)

    },
    { "name": "kapil",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle":  "its here",
      "image":    "assets/images/img7.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "1",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.call,color: Colors.red,),
      "call_in_out": Icon(Icons.call_received,color: Colors.red,)

    },
    { "name": "Developer",
      "color":  Colors.blueAccent,
      "subTitle": "this is the 2nd one",
      "image":    "assets/images/img3.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "2",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.call,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)

    },
    { "name": "Programmer",
      "color":  Colors.red,
      "subTitle": "Are you ...",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "0",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.videocam_rounded,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)

    },
    { "name": "Hacker4",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "its not good of you",
      "image":    "assets/images/img2.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "5",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.call,color: Color.fromRGBO(1, 92, 75, 100),),
      "call_in_out": Icon(Icons.call_received,color: Color.fromRGBO(1, 92, 75, 100),)


    },
    { "name": "Progammer",
      "color":  Colors.pink,
      "subTitle": "Xyz",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "6",
      "call_time": "1 October,3:02 pm",
      "call_type": Icon(Icons.videocam_rounded,color: Colors.red,),
      "call_in_out": Icon(Icons.call_received,color: Colors.red,)


    },
  ];
  List<Map<String,dynamic>> listData1 = [
    { "name": "Programmer",
      "color":  Colors.blue,
      "subTitle": "hello Programmer",
      "image":    "assets/images/img4.jpg"
      ,"time":   "10.10 am"
      ,"unread": "0",


    },
    { "name": "Developer",
      "color":  Colors.red,
      "subTitle": "hello Developer",
      "image":    "assets/images/img8.jpg"
      ,"time":   "10.10 am"
      ,"unread": "6",

    },
    { "name": "Hacker",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle":  "its here",
      "image":    "assets/images/img7.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "1",

    },
    { "name": "White hat hacker",
      "color":  Colors.blueAccent,
      "subTitle": "It is the 2nd one",
      "image":    "assets/images/img3.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "2",

    },
    { "name": "Red hat hacker",
      "color":  Colors.red,
      "subTitle": "Are you ...",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "0",

    },
    { "name": "Programmer",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "its not good of you",
      "image":    "assets/images/img2.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "5",


    },
    { "name": "Ethical hacker",
      "color":  Colors.pink,
      "subTitle": "hello",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "6",

    },
    { "name": "Mr India Hacker",
      "color":  Colors.blue,
      "subTitle": "hello",
      "image":    "assets/images/img4.jpg"
      ,"time":   "10.10 am"
      ,"unread": "0",

    },
    { "name": "Programmer",
      "color":  Colors.red,
      "subTitle": "Hello!",
      "image":    "assets/images/img8.jpg"
      ,"time":   "10.10 am"
      ,"unread": "6",

    },
    { "name": "Hacker3",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle":  "its here",
      "image":    "assets/images/img7.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "1",

    },
    { "name": "Ai",
      "color":  Colors.blueAccent,
      "subTitle": "this is the 2nd one",
      "image":    "assets/images/img3.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "2",

    },
    { "name": "Coming soon",
      "color":  Colors.red,
      "subTitle": "Are you ...",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "0",

    },
    { "name": "Developer",
      "color":  Color.fromRGBO(1, 92, 75, 100),
      "subTitle": "its not good of you",
      "image":    "assets/images/img2.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "5",


    },
    { "name": "Ludo king",
      "color":  Colors.pink,
      "subTitle": "Roll the dice",
      "image":    "assets/images/img1.jpeg"
      ,"time":   "10.10 am"
      ,"unread": "6",

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
          appBar: AppBar( //leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            backgroundColor: Color.fromRGBO(1, 92, 75, 100),
            title: Text("Whatsapp",style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.w500),),
            // centerTitle: true,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.white,size: 28,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,size: 28,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,size: 28,)),
            ],
            toolbarHeight: 80,
            bottom: TabBar(
              indicatorColor: Colors.white,
              dividerColor: Colors.blueGrey,
              tabs: [
                Icon(Icons.groups,color: Colors.white,),
                Text("Chats",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),
                Text("Status",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),
                Text("Calls",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500),),


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

                  title: Text(listData1[index]["name"],style: TextStyle(fontSize: 24,color: Colors.black),),
                  subtitle: Row(
                    children: [
                      listData[index]["call_in_out"],
                      Text(listData[index]["call_time"],style: TextStyle(fontSize: 18,color: Colors.grey.shade700),),

                    ],
                  ),
                  trailing: Column( mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    // Icon(Icons.call,size: 30,color: Color.fromRGBO(1, 92, 75, 100),),
                     listData[index]["call_type"],
                    ],
                  ),
                );

              } ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Container(
        alignment: Alignment.center,
        height: 80,
        width: 80,
        margin: EdgeInsets.only(right: 32,bottom: 28),
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add_ic_call_rounded,color: Colors.white,size: 40,),
          backgroundColor:   Color.fromRGBO(1, 92, 75, 100),

        ),
      ),

      ),
    );
  }
}