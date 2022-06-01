import 'package:catlog_app/models/catlogapp.dart';
import 'package:flutter/material.dart';

class details_page extends StatelessWidget {
  final item Item;

  const details_page({Key? key, required this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Hero(
                tag: Key(Item.id.toString()),
                child: Image.network(Item.image)),
          ],
        ),
      ),
    );
  }
}
