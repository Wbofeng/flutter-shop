import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './pages/category.dart';
import './pages/home.dart';
import './pages/shopping.dart';
import './pages/user.dart';

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Widget currentPage; //当前页面
  int currentIndex = 0;
  final color = Colors.red;
  final List<Widget> tabBodies = [
    new HomePage(),
    new CategoryPage(),
    new ShoppingPage(),
    new UserPage()
  ];

  void initState() {
    super.initState();
    currentPage = tabBodies[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: currentIndex,
        items:[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.dashboard),
            title: new Text('分类'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.shopping_cart),
            title: new Text('购物车'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('我的')
          )
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        }
      ),
      body: currentPage,
    );
  }
}
