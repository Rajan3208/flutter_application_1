import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int price = 30;
    final String name = "Coder Rajan";

    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:Text("My First App"), 
        ),
        body: Center(
          child: Container(
            child: Text("$name's net worth is $price crore"),
          ),
        ),
        drawer: MyDrawer(),
     ),
    );
  }
}
