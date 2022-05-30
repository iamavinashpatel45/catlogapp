import 'package:catlog_app/Widget/Drawer.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      drawer: mydrawer(),
      body: Text(''),
    );
  }
}
