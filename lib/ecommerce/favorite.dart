import 'package:flutter/material.dart';

class favoriteScreen extends StatelessWidget {
  const favoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber
        ),

        child: Text('Favorite Screen'),
      ),
    );;
  }
}