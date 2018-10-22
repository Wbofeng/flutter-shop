import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './homePages/select.dart';
import './homePages/cloth.dart';
import './homePages/fresh.dart';
import './homePages/promotion.dart';
import './homePages/voucher.dart';
import './search.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget barSearch() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new FlatButton.icon(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) {
                      return new SearchPage();
                    }
                  ));
                },
                icon: new Icon(
                  Icons.search,
                  size: 16.0
                ),
                label: new Text(
                  "来搜索一下商品吧",
                ),
              )
          ),
          new Container(
            decoration: new BoxDecoration(
                border: new BorderDirectional(
                    start: new BorderSide(width: 1.0)
                )
            ),
            height: 14.0,
            width: 1.0,
          ),
          new Container(
            child: new FlatButton.icon(
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) {
                    return new SearchPage();
                  }
                ));
              },
              icon: new Icon(
                Icons.message,
                size: 20.0
              ),
              label: new Text(
                "",
              ),
            )
          )
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: Colors.grey[200]
      )
    );
  }

  @override
  Widget build (BuildContext context) {
    return new DefaultTabController(
        length: 5,
        child: new Scaffold(
          appBar: new AppBar(
            title: barSearch(),
            bottom: new TabBar(
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.red,
              tabs: [
                new Tab(text: "精选"),
                new Tab(text: "服装"),
                new Tab(text: "生鲜"),
                new Tab(text: "领券"),
                new Tab(text: "促销")
              ],
            ),
          ),
          body: new TabBarView(
              children: [
                new SelectPage(),
                new ClothPage(),
                new FreshPage(),
                new VoucherPage(),
                new PromotionPage()
              ]
          ),
        ),
    );
  }
}