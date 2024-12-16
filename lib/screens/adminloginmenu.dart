import 'package:flutter/material.dart';
import 'package:visitorapp/screens/viewall.dart';

class AMenuSystem extends StatefulWidget {
  const AMenuSystem({super.key});

  @override
  State<AMenuSystem> createState() => _MenuSystemState();
}

class _MenuSystemState extends State<AMenuSystem> {
  final List<Widget> pages=[
   SViewall()
  ];
  int currentIndexValue=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("            Visitor App"),
        leading: GestureDetector(
          onTap: (){
            print("Logo Clicked");
          },
          //child: Icon(Icons.account_box),
        ),
      ),

      body: pages[currentIndexValue],

    );
  }
}
