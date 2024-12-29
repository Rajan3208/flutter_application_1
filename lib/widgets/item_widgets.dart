// item_widgets.dart
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}",style: TextStyle(color: Colors.deepPurple),),
      // Add your container content here
    );
  }
}