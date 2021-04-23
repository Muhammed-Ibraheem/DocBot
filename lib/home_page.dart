import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:profile_page/chatbot.dart';

import 'chatbot.dart';

class HomePage extends StatefulWidget {
  static String id = 'Home_Page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future navigateToChatBot(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatBot()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.png'),
              ),
              Text(
                ' Welcome, mio ',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    ImageButton(
                      children: <Widget>[],
                      width: 100,
                      height: 110,
                      pressedImage: Image.asset(
                        "images/bot.png",
                      ),
                      unpressedImage: Image.asset("images/bot.png"),
                      onTap: () {
                        Navigator.pushNamed(context, ChatBot.id);
                        print('test');
                      },
                    ),
                    ImageButton(
                      children: <Widget>[],
                      width: 100,
                      height: 100,
                      pressedImage: Image.asset(
                        "images/map.png",
                      ),
                      unpressedImage: Image.asset("images/map.png"),
                      onTap: () {
                        print('test');
                      },
                    ),
                    ImageButton(
                      children: <Widget>[],
                      width: 100,
                      height: 110,
                      pressedImage: Image.asset(
                        "images/drugs.png",
                      ),
                      unpressedImage: Image.asset("images/drugs.png"),
                      onTap: () {
                        print('test');
                      },
                    ),
                    ImageButton(
                      children: <Widget>[],
                      width: 100,
                      height: 100,
                      pressedImage: Image.asset(
                        "images/history.png",
                      ),
                      unpressedImage: Image.asset("images/history.png"),
                      onTap: () {
                        print('test');
                      },
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
