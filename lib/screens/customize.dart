import 'dart:math';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customizer extends StatefulWidget {
  @override
  _CustomizerState createState() => _CustomizerState();
}

class _CustomizerState extends State<Customizer> {
  List categories = [
    'Politics',
    'Education',
    'Miscellaneous',
    'Business',
    'Sports',
    'Entertainment',
    'Technology',
    'Automobile',
    'Hatke',
    'International',
    'Startups',
    'Science',
    'National',
    'Travel',
    'Fashion',
  ];

  List otherTopics = [
    'Hollywood',
    'Tokyo Olympics',
    'Israel-Palestine conflict',
    'Coronavirus',
    'Coronavirus Outbreak',
    'Crime',
    'Cyclone Tauktae',
    'Viral Stories',
    'Bigg Boss',
    'Big Boss 15',
    'Sushant Singh Rajput',
    'Global Start-ups',
  ];

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'Personalize Your Feed',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 15,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'All News',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Major News',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 15,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'No News',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          for (var i in categories)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 22, bottom: 22),
                  child: Text(
                    i,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, top: 15),
            child: Text(
              'Other Topics',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Agne',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2,
            color: Colors.black,
            height: 1,
            endIndent: 350,
            indent: 33,
          ),
          SizedBox(
            height: 20,
          ),
          for (var i in otherTopics)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 22, bottom: 22),
                  child: Text(
                    i,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
