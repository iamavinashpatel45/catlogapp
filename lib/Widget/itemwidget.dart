import 'package:catlog_app/models/catlogapp.dart';
import 'package:flutter/material.dart';
import '../models/catlogapp.dart';

class itemwidget extends StatelessWidget {
  final item Item;

  const itemwidget({Key? key, required this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(Item.image),
        title: Text(Item.name),
        subtitle: Text(Item.dec),
        trailing: Text("\$" + Item.price.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
        ),
      ),
    );
  }
}
