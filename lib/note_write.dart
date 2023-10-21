import 'package:flutter/material.dart';

class Note1 extends StatelessWidget {
  const Note1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

      title: Container(height: 56,
          width: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromRGBO(44, 44, 44, 100),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),  child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),

      //  title: Text("Notes",style: TextStyle(color: Colors.white,fontSize: 36),),
        //centerTitle: true,
        actions: [ Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromRGBO(44, 44, 44, 100),
            ),
            margin: EdgeInsets.symmetric(horizontal: 28),

            child: IconButton(onPressed: (){}, icon: Icon(Icons.note_alt_rounded,color: Colors.white,size: 32,)))],
        backgroundColor: Colors.black,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Text("Lorem Ipsum is simply text of the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard dummy text ever",
              style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w400), ),
          ),
            SizedBox(height: 10,),
            Container(
              height: 24,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Text("May 21 , 2023 ",
                style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),
            ),
            SizedBox(height: 10,),

            Container(
              height: 600,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child:
              Text("To change the icon button background color in Flutter, "
                  "you can wrap your IconButton widget inside the CircleAvatar widget,"
                  " and inside the CircleAvatar you can provide the background color."
                  "To change the icon button background color in Flutter, "
                  "you can wrap your IconButton widget inside the CircleAvatar widget,"
                  " and inside the CircleAvatar you can provide the background color."
                  "To change the icon button background color in Flutter, "
                  "you can wrap your IconButton widget inside the CircleAvatar widget,"
                  " and inside the CircleAvatar you can provide the background color.\n \n"
                  "To change the icon button background color in Flutter, "
                  "you can wrap your IconButton widget inside the CircleAvatar widget,"
                  " and inside the CircleAvatar you can provide the background color."
                  "To change the icon button background color in Flutter, "
                  "you can wrap your IconButton widget inside the CircleAvatar widget,"
                  " and inside the CircleAvatar you can provide the background color."
                  "To change the icon button background color in Flutter, "
                  "you can wrap your IconButton widget inside the CircleAvatar widget,"
                  " and inside the CircleAvatar you can provide the background color.\n",
                style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
            ),
          ],),
      ),
    );
  }
}
