import 'package:flutter/material.dart';
import '../../models/catlogapp.dart';

class details_image extends StatelessWidget {
  final item Item;

  const details_image({Key? key, required this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
        child: Hero(
            tag: Key(Item.id.toString()),
            child: Image.network(
              Item.image,
              height: 300,
            )),
      ),
    );
  }
}
