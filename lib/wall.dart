import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WallP1 extends StatelessWidget {
  List<Map<String, dynamic>> wallpaperlist = [
    {
      "color": Colors.pink,
      "Categories": "assets/images/ct1.jpg",
      "img": "assets/images/wal1.jpg",
    },
    {
      "color": Colors.green,
      "Categories": "assets/images/ct2.jpg",
      "img": "assets/images/wal2.jpg",
    },
    {
      "color": Colors.red,
      "Categories": "assets/images/ct3.3.jpg",
      "img": "assets/images/wal3.jpg",
    },
    {
      "color": Colors.purple,
      "Categories": "assets/images/ct4.jpg",
      "img": "assets/images/wal4.jpg",
    },

    //copy here
    {
      "color": Colors.pink,
      "Categories": "assets/images/ct1.jpg",
      "img": "assets/images/wal1.jpg",
    },
    {
      "color": Colors.green,
      "Categories": "assets/images/ct2.jpg",
      "img": "assets/images/wal2.jpg",
    },
    {
      "color": Colors.red,
      "Categories": "assets/images/ct3.3.jpg",
      "img": "assets/images/wal3.jpg",
    },
    {
      "color": Colors.purple,
      "Categories": "assets/images/ct4.jpg",
      "img": "assets/images/wal4.jpg",
    },

    // copy here

    {
      "color": Colors.pink,
      "Categories": "assets/images/ct1.jpg",
      "img": "assets/images/wal1.jpg",
    },
    {
      "color": Colors.green,
      "Categories": "assets/images/ct2.jpg",
      "img": "assets/images/wal2.jpg",
    },
    {
      "color": Colors.red,
      "Categories": "assets/images/ct3.3.jpg",
      "img": "assets/images/wal3.jpg",
    },
    {
      "color": Colors.purple,
      "Categories": "assets/images/ct4.jpg",
      "img": "assets/images/wal4.jpg",
    },

    //copy here
    {
      "color": Colors.pink,
      "Categories": "assets/images/ct1.jpg",
      "img": "assets/images/wal1.jpg",
    },
    {
      "color": Colors.green,
      "Categories": "assets/images/ct2.jpg",
      "img": "assets/images/wal2.jpg",
    },
    {
      "color": Colors.red,
      "Categories": "assets/images/ct3.3.jpg",
      "img": "assets/images/wal3.jpg",
    },
    {
      "color": Colors.purple,
      "Categories": "assets/images/ct4.jpg",
      "img": "assets/images/wal4.jpg",
    },

    // copy here

    {
      "color": Colors.pink,
      "Categories": "assets/images/ct1.jpg",
      "img": "assets/images/wal1.jpg",
    },
    {
      "color": Colors.green,
      "Categories": "assets/images/ct2.jpg",
      "img": "assets/images/wal2.jpg",
    },
    {
      "color": Colors.red,
      "Categories": "assets/images/ct3.3.jpg",
      "img": "assets/images/wal3.jpg",
    },
    {
      "color": Colors.purple,
      "Categories": "assets/images/ct4.jpg",
      "img": "assets/images/wal4.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search box
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Find wallpaper..",
                  suffixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          // best of month
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Best of month",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),

          // list of best of month wallpapers
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  //  itemCount: wallpaperlist.length,
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      // decoration: ,
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(wallpaperlist[index]["img"]),
                              fit: BoxFit.fill)),

                      //child: Image.asset(wallpaperlist[index]["img"]),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // coler tone text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "The coler tone",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          // color tone list
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 8),
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: wallpaperlist[index]["color"],
                      ),
                      margin: EdgeInsets.only(right: 6),
                      height: 50,
                      width: 50,

                      //  child: Text("one"),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          // Categories
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          // gridview wallpaper list
          Expanded(
            child: GridView.builder(
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 2 / 1),
                itemBuilder: (context, index) {
                  return Container(
                    //margin: EdgeInsets.only(top: 6, right: 6),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                                AssetImage(wallpaperlist[index]["Categories"]),
                            fit: BoxFit.fill)),
                    child: Text("sample"),
                  );
                }),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
