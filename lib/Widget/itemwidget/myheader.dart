import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myheader extends StatelessWidget {
  const myheader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,bottom: 15,left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Catalog App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Theme.of(context).cursorColor,
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: Text('Trending Products',
              style: TextStyle(
                color: Theme.of(context).cursorColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
