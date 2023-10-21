import 'package:flutter/material.dart';

class mrTip extends StatefulWidget {
  const mrTip({super.key});

  @override
  State<mrTip> createState() => _mrTipState();
}

class _mrTipState extends State<mrTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: InkWell(onTap: (){} ,child: Icon(Icons.arrow_back)),title: Text("Mr Tip Calculator"),centerTitle: true,actions: [InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.settings),
        ),
      )],),
body: Container(
  margin: EdgeInsets.all(10),
  color: Colors.grey.shade100,
  child:   Column(children: [
  
  Image.asset('assets/images/Mrtip.JPG' , height: 100 ,width: 200,), //1 
  
  Material(
    elevation: 10,
    child: Container(        //2 
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Colors.blue.shade300),
       // padding: EdgeInsets.all(12),
    height: 250 ,width: double.infinity ,
    child: Column(
     
      children: [
  Padding(
    padding: const EdgeInsets.all(10.0),
    child:   Row(mainAxisAlignment: MainAxisAlignment.center,
    
      children: [Text("Total P/person",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)],),
  ),
    
  Container(
   
    padding: const EdgeInsets.all(10.0),
    child:   Row( mainAxisAlignment: MainAxisAlignment.center,
    
      children: [Text("\$000",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w600,),),],),
     
  ), 
  Divider(thickness: 1,color: Colors.white,indent: 30,endIndent: 30,),

  SizedBox(height: 20,),
  Padding(
    padding: const EdgeInsets.all(10.0),
    child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(children: [Text("Total Bill",style: TextStyle(color: Colors.white)),Text("\$000",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500))  ],),
    Column(children: [Text("Total Tip",style: TextStyle(color: Colors.white)),Text("\$000",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500))  ],),
    
    
    
    ],),
  )
  
  
  
  
    ],),
    ),
  ),                
  
  
  
 Padding(
   padding: const EdgeInsets.only(top: 20,bottom: 10),
   child: Row(             //3 Enter your bill
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
 Container(width: 70,
   child: Column(mainAxisAlignment: MainAxisAlignment.start,
    children: [Text("Enter",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),SizedBox(height: 5,),Text("your Bill")],),
 ),
 Row(children: [
          Container(height: 40,width: 165,color: Colors.blue.shade200,child: Center(child: Text("\$0.00",style: TextStyle(color: Colors.white,fontSize: 24),)),),
    
          
          ],),
     ],),
 ),

  
  
  Padding(           //4 choose
    padding: const EdgeInsets.only(top: 10,bottom: 10),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
     
      children: [
        Container(width:70,child: Column(children: [Text("Choose",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),SizedBox(height: 5,),Text("your tip")],)),
   Column(
     children: [
       Row(children: [
        
      InkWell(onTap: (){},child: Container(height: 40,width: 50,color: Colors.blue,child: Center(child: Text("10%",style: TextStyle(fontSize: 20,color: Colors.white),)),)),SizedBox(width: 7.5,),
      InkWell(onTap: (){},child: Container(height: 40,width: 50,color: Colors.blue,child: Center(child: Text("15%",style: TextStyle(fontSize: 20,color: Colors.white),)),)),SizedBox(width: 7.5,),
      InkWell(onTap: (){},child: Container(height: 40,width: 50,color: Colors.blue,child: Center(child: Text("20%",style: TextStyle(fontSize: 20,color: Colors.white),)),)),
  
        
        ],),SizedBox(height: 10,),

        Row(children: [

        InkWell(onTap: (){},child: Container(height: 40,width: 165,color: Colors.blue,child: Center(child: Text("Custom tip",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),)),)),

       
  
        
        ],),
     ],
   )
    
    
    ],),
  ),
  
  
  
  Padding(                 //5 split

   padding: const EdgeInsets.only(top: 10,bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
      Container(width: 70 ,child: Column(children: [Text("Split",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),SizedBox(height: 5,),Text("your bill")],)),
   Column(
     children: [
       Row(children: [
        InkWell( onTap: (){},child: Container(height: 40,width: 50,color: Colors.blue,child: Center(child: Text("-",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w800,color: Colors.white),)),)),SizedBox(width: 7.5,),
        Container( height: 40,width: 50,color: Colors.blue.shade200,child: Center(child: Text("1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),)),),SizedBox(width: 7.5,),
       InkWell( onTap: (){},child: Container(height: 40,width: 50,color: Colors.blue,child: Center(child: Text("+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),)),)),

        
        ],)
     ],
   )
    
    
    ],),
  ),
 
  
  
  
  
  
  
  ],),
) );

}
}