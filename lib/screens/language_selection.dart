import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  Color color = Colors.white;
  Color textColor = Colors.blue;

  bool colorOn1 = false;
  bool colorOn2 = false;

  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.language,
            color: Colors.blue,
            size: 100,
          ),
          Text(
            'Chose your language',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LanguageButton(
                text: 'English',
                onPressed: () {
                  setState(
                    () {
                      if (colorOn1 == false) {
                        colorOn1 = true;
                        colorOn2 = false;
                      }
                    },
                  );
                },
                color: color,
                textColor: textColor,
                colorToggle: colorOn1,
              ),
              LanguageButton(
                text: 'हिन्दी',
                onPressed: () {
                  setState(
                    () {
                      if (colorOn2 == false) {
                        colorOn2 = true;
                        colorOn1 = false;
                      }
                    },
                  );
                },
                color: color,
                textColor: textColor,
                colorToggle: colorOn2,
              )
            ],
          ),
          GestureDetector(
            child: Text(
              'Don\'t find find your language?',
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 10),
            ),
            onTap: () {},
          ),
          Column(
            children: [
              Icon(Icons.arrow_upward_sharp),
              Text(
                'Swipe Up',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  LanguageButton(
      {required this.text,
      required this.onPressed,
      required this.color,
      required this.textColor,
      required this.colorToggle});

  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final bool colorToggle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2.2, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
          color: colorToggle == true ? Colors.blue : Colors.white,
        ),
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Text(
          text,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: colorToggle == true ? Colors.white : Colors.blue,
              fontSize: 20,
              fontFamily: 'Roboto'),
        ),
      ),
      onTap: onPressed,
    );
  }
}
