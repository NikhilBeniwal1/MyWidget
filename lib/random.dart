import 'package:flutter/material.dart';
import 'dart:math';

class RandomNo extends StatefulWidget {
  @override
  State<RandomNo> createState() {
    return _RandomNo();
  }
}

class _RandomNo extends State<RandomNo> {
  int Randomno1 = 0;
  int Randomno2 = 0;
  int Randomno3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random number"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "$Randomno1$Randomno2$Randomno3 ",
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Randomno2 = (Random().nextInt(84) + 15);
                  Randomno1 = (Random().nextInt(89) + 10);
                  Randomno3 = (Random().nextInt(73) + 26);
                });
              },
              child: Text("Random No"),
            )
          ],
        ),
      ),
    );
  }
}
