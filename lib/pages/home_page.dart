// Homepage.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widgets.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int price = 30;
    String name = "Coder Rajan";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text(
            "My First App",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModel.items[index],
            );
          },
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}