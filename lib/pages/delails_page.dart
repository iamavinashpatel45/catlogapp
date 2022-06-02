import 'package:catlog_app/models/catlogapp.dart';
import 'package:flutter/material.dart';

import '../Widget/detailsfile/buttombar.dart';
import '../Widget/detailsfile/details_image.dart';
import '../Widget/detailsfile/details_mid.dart';

class details_page extends StatelessWidget {
  final item Item;

  const details_page({Key? key, required this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: buttombar(Item: Item,),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            details_image(Item: Item),
            details_mid(Item: Item),
          ],
        ),
      ),
    );
  }
}
