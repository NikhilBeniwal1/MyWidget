import 'package:flutter/material.dart';

class CstmCode extends StatefulWidget {
  const CstmCode({super.key});

  @override
  State<CstmCode> createState() => _CstmCodeState();
}

class _CstmCodeState extends State<CstmCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Button")),
          AppRoundedBtn(
            btnname: "+",
            onTap: () {},
            bgcolor: Colors.green,
            btnwidth: 120,
          ),
          AppTextfield(
              Textfieldlable: "Name", Textfieldicon: Icon(Icons.account_box))
        ],
      ),
    );
  }
}

// Custom Button for Application
class AppRoundedBtn extends StatelessWidget {
  String btnname;
  VoidCallback onTap;
  Color bgcolor;
  double btnwidth;

  AppRoundedBtn(
      {required this.btnname,
      required this.onTap,
      required this.bgcolor,
      this.btnwidth = 20});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(btnname),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          foregroundColor: Colors.white,
          minimumSize: Size(btnwidth, 50)),
    );
  }
}
// Custom Text for Application

class AppTextstyle extends StatelessWidget {
  Color txtcolor;
  double txtsize;
  AppTextstyle({this.txtcolor = Colors.green, this.txtsize = 40});

  @override
  Widget build(BuildContext context) {
    return Text(
      "",
      style: TextStyle(color: txtcolor, fontSize: txtsize),
    );
  }
}

// Custom Textfield

class AppTextfield extends StatelessWidget {
  String Textfieldlable;
  Icon Textfieldicon;
  AppTextfield({required this.Textfieldlable, required this.Textfieldicon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text(Textfieldlable),
          suffixIcon: Textfieldicon,
        ),
      ),
    );
  }
}

// Custom Container

class AppContainer extends StatelessWidget {
  double appContainerht;

  AppContainer({required this.appContainerht});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appContainerht,
      color: Colors.grey.shade200,
    );
  }
}
