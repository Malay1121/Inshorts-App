import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:inshorts/screens/customize.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String language = '';
  bool notification = false;
  bool hd_image = false;
  bool night_mode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Options',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Save Your Preferences',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Sign in to save your Likes ',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 13.5,
                    ),
                  ),
                  Text(
                    'and Bookmarks',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 13.5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SocialSignIn(
                            image: 'images/facebook.png',
                            radius: 15,
                          ),
                          SocialSignIn(
                            image: 'images/google.png',
                            radius: 18,
                          ),
                          SocialSignIn(
                            image: 'images/twitter.png',
                            radius: 15,
                          ),
                          SocialSignIn(
                            image: 'images/phone.png',
                            radius: 15,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SettingsOptions(
                space: 150,
                text: 'Language',
                option: DropdownButton<String>(
                  underline: Container(),
                  hint: Text(
                    language,
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  iconSize: 24,
                  style: TextStyle(color: Colors.blue),
                  onChanged: (String? newValue) {
                    setState(() {
                      language = newValue!;
                    });
                  },
                  items: <String>[
                    'English',
                    'हिन्दी',
                  ].map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                ),
                icon: Icons.language,
              ),
            ],
          ),
          Divider(
            indent: 75,
          ),
          SettingsOptions(
            space: 110,
            icon: Icons.notifications,
            text: 'Notifications',
            option: AnimatedToggleSwitch<bool>.dual(
              current: notification,
              first: true,
              second: false,
              height: 40,
              dif: 5.0,
              onChanged: (b) => setState(() => notification = b),
              colorBuilder: (b) => b ? Colors.grey : Colors.blue,
              iconBuilder: (b, size, active) => b
                  ? Icon(Icons.notifications_off_outlined)
                  : Icon(Icons.notifications_on_outlined),
              textBuilder: (b, size, active) => b
                  ? Center(child: Text('Oh no...'))
                  : Center(child: Text('Nice :)')),
            ),
          ),
          Divider(
            indent: 75,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => Customizer(),
                ),
              );
            },
            child: SettingsOptions(
                icon: Icons.color_lens_outlined,
                text: 'Personalize Your Feed',
                option: Container(),
                space: 10),
          ),
          Divider(
            indent: 75,
          ),
          SettingsOptions(
            space: 110,
            icon: Icons.image_outlined,
            text: 'HD Images',
            option: AnimatedToggleSwitch<bool>.dual(
              current: hd_image,
              first: true,
              second: false,
              height: 40,
              dif: 5.0,
              onChanged: (b) => setState(() => hd_image = b),
              colorBuilder: (b) => b ? Colors.grey : Colors.blue,
              iconBuilder: (b, size, active) => b
                  ? Icon(Icons.image)
                  : Icon(
                      Icons.image,
                    ),
              textBuilder: (b, size, active) =>
                  b ? Center(child: Text('')) : Center(child: Text('')),
            ),
          ),
          Divider(
            indent: 75,
          ),
          SettingsOptions(
            space: 110,
            icon: Icons.brightness_4_outlined,
            text: 'Night Mode',
            option: AnimatedToggleSwitch<bool>.dual(
              current: night_mode,
              first: false,
              second: true,
              height: 40,
              dif: 5.0,
              onChanged: (b) => setState(() => night_mode = b),
              colorBuilder: (b) => b ? Colors.grey : Colors.blue,
              iconBuilder: (b, size, active) => b
                  ? Icon(Icons.light_mode_outlined)
                  : Icon(
                      Icons.dark_mode_outlined,
                    ),
              textBuilder: (b, size, active) =>
                  b ? Center(child: Text('')) : Center(child: Text('')),
            ),
          ),
          Divider(
            indent: 75,
          ),
          SettingsOptions(
            space: 140,
            text: 'Autoplay',
            option: DropdownButton<String>(
              underline: Container(),
              hint: Text(
                language,
                style: TextStyle(color: Colors.blue, fontSize: 17),
              ),
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.blue,
              ),
              iconSize: 24,
              style: TextStyle(color: Colors.blue),
              onChanged: (String? newValue) {
                setState(() {
                  language = newValue!;
                });
              },
              items: <String>[
                'On',
                'Off',
                'Only On Wifi',
              ].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
            icon: Icons.play_arrow,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MoreOptions(
                  text: 'Share this app',
                  onTap: () {},
                ),
                MoreOptions(
                  text: 'Rate this app',
                  onTap: () {},
                ),
                MoreOptions(
                  text: 'Feedback',
                  onTap: () {},
                ),
                MoreOptions(
                  text: 'Terms & conditions',
                  onTap: () {},
                ),
                MoreOptions(
                  text: 'privacy',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MoreOptions extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MoreOptions({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade100,
        child: Padding(
          padding: EdgeInsets.only(top: 30, left: 40, bottom: 30),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsOptions extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget option;
  final double space;

  const SettingsOptions(
      {required this.icon,
      required this.text,
      required this.option,
      required this.space});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black54,
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(),
            option,
          ],
        ),
      ),
    );
  }
}

class SocialSignIn extends StatelessWidget {
  final String image;
  final double radius;

  const SocialSignIn({required this.image, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(
              image,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
