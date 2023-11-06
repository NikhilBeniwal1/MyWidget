import 'package:flutter/material.dart';

class MyNotesApp extends StatefulWidget {
  const MyNotesApp({super.key});

  @override
  State<MyNotesApp> createState() => _MyNotesAppState();
}

class _MyNotesAppState extends State<MyNotesApp> {
  var _titleControler = TextEditingController();
  var _notesControler = TextEditingController();

  List<Note> listofnotes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Note App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            ListTile(
              title: Text("hello"),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey.shade300,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Add new Note"),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _titleControler,
                          decoration: InputDecoration(hintText: "Title"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _notesControler,
                          decoration: InputDecoration(hintText: "Note"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Add"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Cancle"),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                });
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ));
  }
}

class Note {}
