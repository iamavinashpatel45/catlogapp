import 'package:flutter/material.dart';
import '../../models/catlogapp.dart';

class details_mid extends StatelessWidget {
  final item Item;

  const details_mid({Key? key, required this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              Item.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            Item.desc,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Nostrud magna elit culpa nisi laborum id. Nulla sit labore ut cupidatat officia reprehenderit qui duis nisi. Magna sunt cillum consectetur consectetur nulla incididunt eiusmod commodo in aliquip. Minim ipsum do ipsum excepteur as eiusmod. Ea ea irure consectetur proident nisi voluptate ea eiusmod dolor nisi laborum non sit. Et in ad duis qui ipsum non dolor proident aliqua anim Lorem sint.Magna sunt ad cillum consectetur consectetur nulla incididunt eiusmod commodo in aliquip. Minim ipsum do ipsum excepteur add eiusmod.',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
