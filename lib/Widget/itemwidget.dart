import 'package:catlog_app/models/catlogapp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/catlogapp.dart';

class itemwidget extends StatelessWidget {
  final item Item;

  const itemwidget({Key? key, required this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: Key(Item.id.toString()),
                      child: Image.network(
                        Item.image,
                        //color: Colors.black26,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16, left: 8, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Item.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Item.desc,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      //SizedBox(height: 5,),
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Hero(
                            tag: Key(Item.price.toString()),
                            child: Text(
                              '\$' + Item.price.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey[700]),
                                shape:
                                    MaterialStateProperty.all(StadiumBorder())),
                            child: Icon(
                              Icons.shopping_cart,
                              size: 25,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// child: ListTile(
//   leading: Container(
//     child: Image.network(Item.image),
//   ),
//   title: Padding(
//     padding: EdgeInsets.all(16),
//     child: Text(Item.name),
//   ),
//   subtitle:  Padding(
//     padding: EdgeInsets.only(bottom: 16),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(Item.desc),
//         Text("\$" + Item.price.toString(),
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.blue,
//           ),
//         ),
//       ],
//     ),
//   ),
//   // trailing: Text("\$" + Item.price.toString(),
//   //   style: TextStyle(
//   //     fontWeight: FontWeight.bold,
//   //     color: Colors.blue,
//   //   ),
//   // ),
// ),
