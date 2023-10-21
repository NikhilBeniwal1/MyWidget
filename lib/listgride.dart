import 'package:flutter/material.dart';

class ListandGride extends StatelessWidget {
  final List<String> items = List.generate(100, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid View"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.grey[300],
                  child: Center(
                    child: Text(items[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
