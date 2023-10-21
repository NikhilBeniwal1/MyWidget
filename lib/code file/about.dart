import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('About us'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // home and about options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ TextButton(onPressed: (){}, child: Text("Home",style: TextStyle(color: Colors.blue)),),
          TextButton(onPressed: (){}, child: Text("about",style: TextStyle(color: Colors.blue))),
          
          ],),
            // about text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "About the bankapp",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            // 2nd image section
            Image.asset(
              "images/assets/img.JPG",fit: BoxFit.fill,
              height: 300,
              width: 500,
            ),
      
            
          ],
        ),
      ),
    ));
  }
}
