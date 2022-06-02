import 'package:flutter/material.dart';

class cart_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        title: Text('Cart',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
    );
  }
}
