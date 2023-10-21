import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  var no1 = TextEditingController();
  var no2 = TextEditingController();
  num result = 0;
  num calculate = 0;

  /*var sum = 0;
  var sub = 0;
  var div ;
  var mul;*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          child: Column(
            children: [
              Text(
                "Simple Calculator",
                style: TextStyle(fontSize: 30, color: Colors.indigo),
              ),

              SizedBox(
                height: 20,
              ),
// no1
              TextField(
                controller: no1,
                decoration: InputDecoration(
                  label: Text("no1"),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
// no2
              TextField(
                controller: no2,
                decoration: InputDecoration(
                    label: Text("no2"), border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),

// buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        var n1 = int.parse(no1.text.toString());
                        var n2 = int.parse(no2.text.toString());
                        calculate = add(n1, n2);

                        setState(() {});
                      },
                      child: Text(
                        "Add",
                      )),

                  ElevatedButton(
                      onPressed: () {
                        var n1 = int.parse(no1.text.toString());
                        var n2 = int.parse(no2.text.toString());
                        var sub = n1 - n2;
                        calculate = sub;

                        setState(() {});
                      },
                      child: Text("Sub")),

                  //mul
                  ElevatedButton(
                      onPressed: () {
                        var n1 = int.parse(no1.text.toString());
                        var n2 = int.parse(no2.text.toString());
                        var mul = n1 * n2;
                        calculate = mul;
                        setState(() {});
                      },
                      child: Text("Mul")),
                  ElevatedButton(
                      onPressed: () {
                        var n1 = int.parse(no1.text.toString());
                        var n2 = int.parse(no2.text.toString());
                        var div = n1 / n2;
                        calculate = num.parse(div.toStringAsFixed(2));
                        setState(() {});
                      },
                      child: Text("Div")),
                ],
              ),
              SizedBox(height: 10),

              ElevatedButton(
                  onPressed: () {
                    result = calculate;

                    setState(() {});
                  },
                  child: Text("Calculate")),

              SizedBox(height: 10),
              Text(
                "Result: $result",
                style: TextStyle(fontSize: 30, color: Colors.indigo),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey.shade300,
    );
  }

  add(int no1, int no2) {
    return no1 + no2;
  }
}
