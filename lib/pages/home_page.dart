import 'package:catlog_app/Widget/Drawer.dart';
import 'package:catlog_app/Widget/myheader.dart';
import 'package:catlog_app/models/catlogapp.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../Widget/itemwidget.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  void loaddata() async {
    await Future.delayed(Duration(seconds: 2));
    var json = await rootBundle.loadString('assets/files/Catlog.json');
    var decode = jsonDecode(json);
    var products = decode['products'];
    catlogitems.items =
        List.from(products).map<item>((item_) => item.fromMap(item_)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // appBar: AppBar(
      //   title: Text('Catlog App'),
      // ),
      // drawer: mydrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myheader(),
          if (catlogitems.items.length != null && catlogitems.items.isNotEmpty) Expanded(
                child: ListView.builder(
            shrinkWrap: true,
                    itemCount: catlogitems.items.length,
                    itemBuilder: (context, index) => itemwidget(
                          Item: catlogitems.items[index],
                        )),
              ) else Center(
                  child: CircularProgressIndicator(),
                ),
        ],
      ),
    );
  }
}
