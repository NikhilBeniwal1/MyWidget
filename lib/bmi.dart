import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor = Colors.grey.shade300;
  var msg ="";


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator",style: TextStyle(color: Colors.white),),
      centerTitle: true,
backgroundColor: Colors.indigo,
      ),
body: Center(
  child:   Container(
    width: 300,
    child:   Column(
      mainAxisAlignment: MainAxisAlignment.center,

        children:[

          Text("Your BMI",style: TextStyle(fontSize: 24,color: Colors.indigo,fontWeight: FontWeight.w600)),

          SizedBox(height: 21,),


//kg
      TextField(

        controller: wtController,

        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),

         // label: Text("Weight"),

          hintText: "Enter your Weight in kgs",

          prefixIcon: Icon(Icons.line_weight),

        ),

        keyboardType: TextInputType.number,

      ),

     SizedBox(height: 11,),
//fts
          TextField(

            controller: ftController,

            decoration: InputDecoration(

              hintText: "Enter your height in fts",

           //   label: Text("Height"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),

              prefixIcon: Icon(Icons.height),



            ),

            keyboardType: TextInputType.number,

          ),
          SizedBox(height: 11,),
          //inches
          TextField(
            controller: inController,
            decoration: InputDecoration(
              hintText: "Enter your height in Inches",
              prefixIcon: Icon(Icons.height_sharp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          ),
          SizedBox(height: 16,),

          ElevatedButton(onPressed: (){
            var wt = wtController.text.toString();
            var ft = ftController.text.toString();
            var ich = inController.text.toString();


            if(wt!="" && ft!="" && ich!=""){
              // bmi calculation
              var iwt = int.parse(wt);
              var ift = int.parse(ft);
              var iInch = int.parse(ich);

              var tIch = (ift*12) + iInch ;
              var tcm   =  tIch*2.54 ;
              var tm    =  tcm/100;
              var bmi  = iwt/(tm*tm);

              if(bmi>25){
                msg = "you are OverWeighted";
                bgColor = Colors.orange.shade300;
              }else if (bmi<18 ){
                msg = "you are UnderWeighted";
                bgColor = Colors.red.shade300;
              }
              else {
                msg = "you are healthy ";
                bgColor = Colors.green.shade300;
              }

              setState(() {
                result = "your BMI is: ${bmi.toStringAsFixed(2)}";
              });

            } else{
              setState(() {
                result = "please fill all the required values!";
              });

            }

          }, child: Text("Calculate")  ),
          SizedBox(height: 16,),
          // bmi result

          Text(result, style: TextStyle(fontSize: 20),),
          SizedBox(height: 12,),
          Text(msg, style: TextStyle(fontSize: 20),),



        ]),
  ),
),
backgroundColor: bgColor,
    );
  }
}
