import 'package:flutter/material.dart';

class notificationScreen extends StatelessWidget {
  const notificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.indigo
        ),

        child: Text('Notification Screen'),
      ),
    );;
  }
}