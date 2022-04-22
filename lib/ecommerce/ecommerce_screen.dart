import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/ecommerce/favorite.dart';
import 'package:flutter_application/ecommerce/notification.dart';
import 'package:flutter_application/ecommerce/profile.dart';

class ecommerceScreen extends StatefulWidget {
  ecommerceScreen({Key? key}) : super(key: key);

  @override
  State<ecommerceScreen> createState() => _ecommerceScreenState();
}

class _ecommerceScreenState extends State<ecommerceScreen> {
  int _currentIndex = 0;
  List _body = [
    //home
    ecommerceScreen(),

    //favorite
    favoriteScreen(),

    //notification
    notificationScreen(),

    //profile
    profileScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            print('Leading Pressed !');
          },
        ),
        title: Image.asset('../assets/logo.png', width: 100),
      ),

      body: _body[_currentIndex],

      //bottom Navbar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            _currentIndex = index;
            print('Current Index : ' + index.toString());
          });
          print(index);
        },
      ),
      
    );
  }
}
