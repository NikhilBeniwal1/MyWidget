import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  leading: Icon(Icons.arrow_back_ios),
        title: Row(
          children: [
            Icon(Icons.arrow_back_ios),
            CircleAvatar(
              backgroundColor: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name"),
                  Text(
                    "Online",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
            )
            /*ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text("name"),
              subtitle: Text("online"),
              trailing: SizedBox(
                width: 80,
                height: 10,
              ),
            ),*/
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.video_call_rounded),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.call),
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  "today",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppContainer(
                      ContainerHeight: 30,
                      ContainerWidth: 30,
                      Containertxt: "Hi"),
                  SizedBox(
                    height: 5,
                  ),
                  AppContainer(
                      ContainerHeight: 30,
                      ContainerWidth: 200,
                      Containertxt: "Sample, Text massage sent "),
                  SizedBox(
                    height: 5,
                  ),
                  AppContainer(
                      ContainerHeight: 30,
                      ContainerWidth: 200,
                      Containertxt: "Sample, Text massage sent "),
                  SizedBox(
                    height: 5,
                  ),
                  AppContainer(
                      ContainerHeight: 60,
                      ContainerWidth: 200,
                      Containertxt: "Sample, Text massage sent \ntest run "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  AppContainer(
                      Containerclr: Colors.amber,
                      ContainerHeight: 60,
                      ContainerWidth: 200,
                      Containertxt: "Sample, Text massage sent \ntest run "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  AppContainer(
                      Containerclr: Colors.amber,
                      ContainerHeight: 60,
                      ContainerWidth: 200,
                      Containertxt: "Sample, Text massage sent \ntest run "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  AppContainer(
                      Containerclr: Colors.amber,
                      ContainerHeight: 60,
                      ContainerWidth: 200,
                      Containertxt: "Sample, Text massage sent \ntest run "),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_horiz),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          //suffixIcon: Icon(Icons.email),
                          // label: Text("Email"),
                          hintText: "New chat",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppContainer extends StatelessWidget {
  double ContainerWidth;
  double ContainerHeight;
  String Containertxt;
  Color Containerclr;

  AppContainer(
      {this.Containerclr = Colors.grey,
      required this.ContainerHeight,
      required this.ContainerWidth,
      required this.Containertxt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: ContainerHeight,
        width: ContainerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Containerclr,
        ),
        child: Center(child: Text(Containertxt)),
      ),
    );
  }
}
