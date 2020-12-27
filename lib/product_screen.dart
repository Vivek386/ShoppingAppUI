import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'last_screen.dart';

class ProductScreen extends StatefulWidget {
  static const String id = 'product_screen';
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> with SingleTickerProviderStateMixin {

  var _packetQuantity = ['1 Packet','2 Packet','3 Packet','4 Packet','5 Packet','6 Packet','7 Packet','8 Packet','9 Packet','10 Packet'];
  var _currentItemSelected = '1 Packet';
  var _ltrQuantity = ['1ltr','2ltr','3ltr','4ltr','5ltr','6ltr','7ltr','8ltr','9ltr','10ltr'];
  var _recentItemSelected = '1ltr';
 // var _gmQuantity = ['1gm','2gm''3gm','4gm','5gm','6gm','7gm','8gm','9gm''10gm'];
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 50.0),
              child: Row(
                children: [
                  GestureDetector(onTap: (){
                    Navigator.pop(context);
                  },
                      child: Icon(Icons.arrow_back,color: Colors.deepOrange),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Text('Main Bazar Rd, Kashipur, Uttrakhand 244713,India',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    ),
                  ),
                  Icon(Icons.shopping_cart,color: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey,width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 20.0),
                      Text('Find Products',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage('images/zoom.jpg'),
              ),
            ),
            Align(alignment: Alignment.topLeft,
              child: TabBar(
                  controller: tabController,
                  indicatorColor: Colors.deepOrange,
                  indicatorWeight: 3.0,
                  labelColor: Colors.deepOrange,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, LastScreen.id);
                      },
                      child: Tab(
                        child: Text("WHAT'S NEW", style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'OpenSans'
                        ),),
                      ),
                    ),
                  ]
              ),
            ),
            Expanded(
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child:Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('images/Grocery.jpg'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 2,
                      child: Container(
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(alignment: Alignment.topLeft,
                              child: Text('Anand Milk',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DropdownButton<String>(
                                  iconSize: 27.0,
                                  items: _packetQuantity.map((String dropDownStringItem){
                                    return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: Text(dropDownStringItem),
                                    );
                                  }).toList(),
                                  onChanged: (String newValueSelected){
                                    setState(() {
                                      this._currentItemSelected = newValueSelected;
                                    });
                                  },
                                  value: _currentItemSelected,
                                ),
                                Icon(Icons.share , color: Colors.green),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Rs.30',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 17.0),
                                  height: 40.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(color: Colors.grey,width: 0.5),
                                  ),
                                  child: Row(
                                    children: [
                                      Text('ADD',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Icon(Icons.add,color: Colors.white),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child:Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('images/Grocery.jpg'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 2,
                    child: Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(alignment: Alignment.topLeft,
                            child: Text('Thumbs Up Soft Drink',
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            ),
                          ),
                          Text('About the Product: Strong Taste packed with added preservatives',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton<String>(
                                iconSize: 27.0,
                                items: _ltrQuantity.map((String dropDownStringItem){
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected){
                                  setState(() {
                                    this._recentItemSelected = newValueSelected;
                                  });
                                },
                                value: _recentItemSelected,
                              ),
                              Icon(Icons.share , color: Colors.green),
                            ],
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rs.65',
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 17.0),
                                height: 40.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(color: Colors.grey,width: 0.5),
                                ),
                                child: Row(
                                  children: [
                                    Text('ADD',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(Icons.add,color: Colors.white),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
    );
  }
}
