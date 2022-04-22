import 'package:flutter/material.dart';


class ecommerceScreen extends StatefulWidget {
  ecommerceScreen({Key? key}) : super(key: key);

  @override
  State<ecommerceScreen> createState() => _ecommerceScreenState();
}

class _ecommerceScreenState extends State<ecommerceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.blueAccent,
    items: <Widget>[
      Icon(Icons.add, size: 30),
      Icon(Icons.list, size: 30),
      Icon(Icons.compare_arrows, size: 30),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
  body: Container(color: Colors.blueAccent),
);
  }
}