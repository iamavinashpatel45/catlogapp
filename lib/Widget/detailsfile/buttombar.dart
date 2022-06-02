import 'package:catlog_app/models/catlogapp.dart';
import 'package:flutter/material.dart';

class buttombar extends StatelessWidget {
  final item Item;

  const buttombar({Key? key, required this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Hero(
              tag: Key(Item.price.toString()),
              child: Text(
                '\$' + Item.price.toString(),
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: Icon(
                  Icons.shopping_cart,
                  size: 33,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
