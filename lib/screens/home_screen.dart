import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:inshorts/screens/settings.dart';
import 'feed.dart';
import 'package:swipe/swipe.dart';

class HomeScreen extends StatelessWidget {
  Divider divider = Divider(
    color: Colors.black,
    indent: 10,
    endIndent: 10,
  );

  Row multiDivider = Row(
    children: [
      Container(
        color: Colors.blue,
        height: 1,
        width: 30,
      ),
      Container(
        color: Colors.black54,
        height: 1,
        width: 365,
      ),
    ],
  );

  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => Settings(),
              ),
            );
          },
          icon: Icon(
            Icons.settings_outlined,
            color: Colors.blue,
          ),
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Discover',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'My Feed',
                style: TextStyle(color: Colors.black87, fontSize: 15),
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_right_rounded,
                    color: Colors.blue),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyFeed()));
                },
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx < 0) {
              Navigator.of(context).pop();
            }
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListView(
              children: [
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.0,
                          color: Color(0xFFEBEBEB),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFFEBEBEB),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      hintText: 'Search'),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 10,
                            child: Container(
                              padding: EdgeInsets.all(30),
                              child: Image.asset('images/insights.png'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 10,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Image.asset('images/COVID.png'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        IconText(
                          text: 'My Feed',
                          icon: Icons.feed,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconText(
                          text: 'All News',
                          icon: FontAwesomeIcons.newspaper,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconText(
                          text: 'Top Stories',
                          icon: FontAwesomeIcons.fireAlt,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconText(
                          text: 'Bookmarks',
                          icon: Icons.bookmark,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        IconText(
                          text: 'Unread',
                          icon: Icons.mark_as_unread,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Agne',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Notifications'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black,
                  height: 1,
                  endIndent: 350,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Notification(
                      image: 'images/virat_dhoni.png',
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                    ),
                    divider,
                    Notification(
                      image: 'images/virat_dhoni.png',
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                    ),
                    divider,
                    Notification(
                      image: 'images/virat_dhoni.png',
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Agne',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Insights'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                multiDivider,
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Insights(
                        image: 'images/insights/insight1.png',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Insights(
                        image: 'images/insights/insight2.png',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Insights(
                        image: 'images/insights/insight3.png',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Agne',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Topics'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                multiDivider,
                SizedBox(
                  height: 10,
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                              style: TextStyle(height: 1.3, fontSize: 17),
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
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
                                          color: Colors.grey.shade800),
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
                                          color: Colors.grey.shade800),
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
                                          color: Colors.grey.shade800),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Icon(Icons.cancel, size: 25),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: 15,
                ),
                CarouselSlider(
                  items: [
                    Category(
                      image: 'images/corona.png',
                      text: 'Coronavirus',
                    ),
                    Category(
                      text: 'India',
                      image: 'images/india.png',
                    ),
                    Category(
                      text: 'Business',
                      image: 'images/business.png',
                    ),
                  ],
                  options: CarouselOptions(
                    height: 165,
                    viewportFraction: 0.4,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Column(
                  children: [
                    Notification(
                      image: 'images/virat_dhoni.png',
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                    ),
                    divider,
                    Notification(
                      image: 'images/virat_dhoni.png',
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                    ),
                    divider,
                    Notification(
                      image: 'images/virat_dhoni.png',
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                    ),
                    divider,
                    Notification(
                      image: 'images/virat_dhoni.png',
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper, arcu in tempus lacinia, magna tellus faucibus lectus, vel sodales tortor sapien et magna.',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Text(
                        'VIEW MORE',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.blue.shade700,
                          fontSize: 11,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Agne',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Polls'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Text(
                        'VIEW ALL',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                multiDivider,
                SizedBox(
                  height: 30,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    Poll(
                      statement:
                          'No one explaned to me why I was dropped as SRH captain: David Warner',
                      question:
                          'Do you think SRH should have continued with Warner as captain?',
                      image: 'images/warner.png',
                    ),
                    Poll(
                      statement:
                          'CSK must play Suresh Raina in Qualifier 1 against DC: Sunil Gavaskar',
                      question: 'Do you agree with Gavaskar',
                      image: 'images/suresh.png',
                    ),
                    Poll(
                      statement:
                          'kohli told me I\m selected as an opener in T20 WC squad: Ishan Ksihan',
                      question: 'Do you think Ishan Kishan is the right pick?',
                      image: 'images/ishan.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Poll extends StatelessWidget {
  Poll({required this.image, required this.question, required this.statement});

  final String image;
  final String statement;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Image.asset(image),
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            statement,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
          child: Text(
            question,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 35,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Yes',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 35,
                width: 170,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    'No',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Category extends StatelessWidget {
  Category({required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 0.6, color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 18),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 5,
          width: 25,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
        )
      ],
    );
  }
}

class Insights extends StatelessWidget {
  Insights({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 200,
      child: ClipRRect(
        child: Image.asset(image),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  Notification({required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            text,
            maxLines: 3,
            style: TextStyle(
              height: 1.5,
              fontSize: 15,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            scale: 6,
          ),
        ),
      ],
    );
  }
}

class IconText extends StatelessWidget {
  IconText({required this.icon, required this.text});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 50,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
