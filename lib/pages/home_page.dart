import 'package:catlog_app/Widget/Drawer.dart';
import 'package:catlog_app/models/catlogapp.dart';
import 'package:flutter/material.dart';

import '../Widget/itemwidget.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      drawer: mydrawer(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: catlogitems.items.length,
          itemBuilder: (context, index){
            return itemwidget(Item: catlogitems.items[index],);
          },
        ),
      ),
    );
  }
}
