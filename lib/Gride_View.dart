import 'package:flutter/material.dart';
//  Color.fromRGBO(116, 217, 233, 100), light blue
// Color.fromRGBO(116, 217, 233, 100), light oranage
// Color.fromRGBO(228, 234, 148, 100), light yello green
// Color.fromRGBO(253, 162, 135, 100),  light red
// Color.fromRGBO(44, 44, 44, 100),     light black
// Color.fromRGBO(116, 217, 233, 100)
// Color.fromRGBO(202, 135, 214, 100),  light purple

class Gride1Notes extends StatelessWidget {
  List<Map<String, dynamic>> listData1 = [
    {
      "name": "Programmer",
      "color": Color.fromRGBO(253, 162, 135, 100),
      "subTitle":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
      "image": "assets/images/img4.jpg",
      "time": "Today 20.12 am",
      "unread": "0",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
    {
      "name": "Developer",
      "color": Color.fromRGBO(116, 217, 233, 100),
      "subTitle": "hello Developer",
      "image": "assets/images/img8.jpg",
      "time": "Yesterday 20.30 am",
      "unread": "6",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
    {
      "name": "Hacker",
      "color": Color.fromRGBO(202, 135, 214, 100),
      "subTitle": "its here",
      "image": "assets/images/img7.jpeg",
      "time": "5 October 10.10 am",
      "unread": "1",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
    {
      "name": "White hat hacker",
      "color": Color.fromRGBO(228, 234, 148, 100),
      "subTitle": "It is the 2nd one",
      "image": "assets/images/img3.jpeg",
      "time": "4 October 4.14 am",
      "unread": "2",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
    {
      "name": "Programmer",
      "color": Color.fromRGBO(253, 162, 135, 100),
      "subTitle": "hello Programmer",
      "image": "assets/images/img4.jpg",
      "time": "2 October 8.20 am",
      "unread": "0",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
    {
      "name": "Developer",
      "color": Color.fromRGBO(116, 217, 233, 100),
      "subTitle": "hello Developer",
      "image": "assets/images/img8.jpg",
      "time": "1 October 2.23 am",
      "unread": "6",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
    {
      "name": "Hacker",
      "color": Color.fromRGBO(202, 135, 214, 100),
      "subTitle": "its here",
      "image": "assets/images/img7.jpeg",
      "time": "25 September 5:05",
      "unread": "1",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
    {
      "name": "White hat hacker",
      "color": Color.fromRGBO(228, 234, 148, 100),
      "subTitle": "It is the 2nd one",
      "image": "assets/images/img3.jpeg",
      "time": "10.10 am",
      "unread": "21 September 2:15",
      "note":
          "Lorem Ipsum is simply  \ntext of the printing and \ntypesetting industry. Lorem \nIpsum has been the industry's \nstandard dummy text ever",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          //leading: Icon(Icons.arrow_back),
          title: Text(
            "Notes",
            style: TextStyle(color: Colors.white, fontSize: 36),
          ),
          //centerTitle: true,
          actions: [
            Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(44, 44, 44, 100),
                ),
                margin: EdgeInsets.symmetric(horizontal: 28),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 32,
                    )))
          ],
          backgroundColor: Colors.black,
          toolbarHeight: 80,
        ),
        body: GridView.builder(
          itemCount: listData1.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            //mainAxisExtent: 80,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: listData1[index]["color"],
              ),
              margin: EdgeInsets.only(top: 10, left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        listData1[index]["note"],
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      )),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        listData1[index]["time"],
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            );
          },
        )

        /*Column(
        children: [
          Expanded(
            flex: 2,
            child: GridView.extent(
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              maxCrossAxisExtent: 300,
            children: listData1.map((e) => Container(
           // margin: EdgeInsets.all(8),
              color: e["color"],
            )).toList()
            ),
          ),
          Divider(
            thickness: 10,
            color: Colors.black,
          ),

          Expanded(
            flex: 2,
            child: GridView.count(
              crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                children: listData1.map((e) => Container(
                  // margin: EdgeInsets.all(8),
                  color: e["color"],

                  )).toList()
            ),
          ),
        ],
      ),*/

        );
  }
}
