import 'package:catlog_app/Widget/them.dart';
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
      //backgroundColor: Theme.of(context).,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context).cursorColor,
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
