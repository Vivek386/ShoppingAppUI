import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'product_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              child: Row(
                children: [
                  Icon(Icons.menu,color: Colors.deepOrange),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Text('Main Bazar Rd, Kashipur, Uttrakhand 244713,India',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Icon(Icons.shopping_cart, color: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0,bottom: 15.0),
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
                      Spacer(),
                      Text('Find Products from Nearby Stores',
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
                image: AssetImage('images/babycare.jpg'),
              ),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, ProductScreen.id);
                          },
                          child: Image.asset('images/Grocery.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Himanshu General',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card(
                                child: Icon(
                                    Icons.share,color: Colors.green,
                                    size: 40.0),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: SmoothStarRating(
                                    starCount: 5,
                                    size: 20.0,
                                    color: Colors.deepOrange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                        child: GestureDetector(
                            onTap: (){
                              print('hi');
                            },
                            child: Image.asset('images/Medicinee.png')),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('KSK Medicose',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Card(
                                child: Icon(
                                    Icons.share,color: Colors.green,
                                    size: 40.0),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: SmoothStarRating(
                                    starCount: 5,
                                    size: 20.0,
                                    color: Colors.deepOrange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
