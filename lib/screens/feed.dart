import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:inshorts/screens/home_screen.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:swipe/swipe.dart';

class MyFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 8) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
            );
          }
        },
        child: StackedCardCarousel(
          type: StackedCardCarouselType.fadeOutStack,
          spaceBetweenItems: 3000,
          items: [
            NewsCard(
              image: 'images/malaika.png',
              title:
                  'I deal with contestants as I\'d deal with my kids: \'Malaika on India\'s got talent\'',
              paragraph:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pretium tristique eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas hendrerit ac quam non dapibus. Nulla eleifend risus et nibh tincidunt, quis hendrerit urna molestie. Proin sagittis suscipit velit vitae pellentesque. Etiam auctor rutrum est, et sagittis ex aliquet at. Proin pulvinar eleifend pretium. Duis.',
              time: 'Few hours ago',
            ),
            NewsCard(
                image: 'images/chakaravarthy.png',
                title:
                    'Chakaravarthy will be main guy in India\'s bowling attack at T20 WC: Raina',
                paragraph:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pretium tristique eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas hendrerit ac quam non dapibus. Nulla eleifend risus et nibh tincidunt, quis hendrerit urna molestie. Proin sagittis suscipit velit vitae pellentesque. Etiam auctor rutrum est, et sagittis ex aliquet at. Proin pulvinar eleifend pretium. Duis.',
                time: 'Few hours ago'),
            NewsCard(
                image: 'images/ktaka_cm.png',
                title:
                    'Will decide tax cut on petrol after reviewing state\'s economy: K\'taka CM',
                paragraph:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pretium tristique eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas hendrerit ac quam non dapibus. Nulla eleifend risus et nibh tincidunt, quis hendrerit urna molestie. Proin sagittis suscipit velit vitae pellentesque. Etiam auctor rutrum est, et sagittis ex aliquet at. Proin pulvinar eleifend pretium. Duis.',
                time: 'Few hours ago'),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String image;
  final String title;
  final String paragraph;
  final String time;

  const NewsCard(
      {required this.image,
      required this.title,
      required this.paragraph,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 90,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black),
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          image,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.3),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            paragraph,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            time,
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 290,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 2, bottom: 2),
                      child: Text(
                        'Inshorts',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_left_rounded,
                        color: Colors.blue),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen(),
                        ),
                      );
                    },
                  ),
                  Text(
                    'Discover',
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.refresh,
                  color: Colors.blue,
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
