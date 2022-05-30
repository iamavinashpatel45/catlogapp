import 'package:catlog_app/Widget/Drawer.dart';
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
    print(products);
    catlogitems.items =
        List.from(products).map<item>((item_) => item.fromMap(item_)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      drawer: mydrawer(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: catlogitems.items.length != null && catlogitems.items.isNotEmpty
            ? ListView.builder(
                itemCount: catlogitems.items.length,
                itemBuilder: (context, index) => itemwidget(
                      Item: catlogitems.items[index],
                    ))
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
