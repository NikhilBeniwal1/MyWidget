import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 final Function()? onTop;

 const MyButton({super.key,required this.onTop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        padding: EdgeInsets.all(25),
          margin: EdgeInsets.symmetric(horizontal: 25),
decoration: BoxDecoration(color: Colors.black,
borderRadius: BorderRadius.circular(8)
),
        child: Center(child: Text("Sing In",
          style: TextStyle(color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),),),
    );
  }
}
