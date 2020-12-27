import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LastScreen extends StatefulWidget {
  static const String id = 'last_screen';
  @override
  _LastScreenState createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  var _gmQuantity = ['1gm','2gm''3gm','4gm','5gm','6gm','7gm','8gm','9gm''10gm'];
  var _currentItemSelected = '1gm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            child: Text('CORIANDER POWDER',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Text('About Everest: Coriander Powder is vastly used Ingredient in Indian Food.',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton<String>(
                                iconSize: 27.0,
                                items: _gmQuantity.map((String dropDownStringItem){
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
                              Text('Rs.10',
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
                            child: Text('CHILLI POWDER',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Text('About Us: We provide you the consistent quality',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton<String>(
                                iconSize: 27.0,
                                items: _gmQuantity.map((String dropDownStringItem){
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
                              Text('Rs.10',
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
          Container(height: 30.0,
            padding: EdgeInsets.only(top: 6.0,bottom: 3.0,left: 10.0),
            margin: EdgeInsets.only(top: 15.0,bottom: 5.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
            ),
            child: Text('Best Deals',
            style: TextStyle(
              fontSize: 17.0,
            ),),
          ),
          Container(
            height: 70.0,
            child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF9B0D03),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey,width: 0.5),
                      image: DecorationImage(
                        image: AssetImage('images/flower.jpg'),
                      ),
                    ),
                    child: Align(alignment: Alignment.center,
                      child: Text('Deal of the Day',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      ),
                    ),
                  ),
                ),
                ),
                Expanded(child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey,width: 0.5),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/scooter.jpg'),
                        ),
                        Text('Delivery Charges',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
          Container(height: 30.0,
            padding: EdgeInsets.only(top: 6.0,bottom: 3.0,left: 10.0),
            margin: EdgeInsets.only(top: 15.0,bottom: 5.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Categories',
                style: TextStyle(
                fontSize: 17.0,
                color: Colors.black,
                ),
                ),
                Text('See All >',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.deepOrange,
                ),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 10.0),
            height: 120.0,
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset('images/Grocery.jpg')),
                      Expanded(
                        child: Text('Daily Products',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),),
                      ),
                    ],
                  ),
                )),
                Expanded(child: Card(
                  child: Column(
                    children: [
                      Expanded(child: Image.asset('images/Grocery.jpg')),
                      Expanded(
                        child: Text('Water & Drink',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),),
                      ),
                    ],
                  ),
                )),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
