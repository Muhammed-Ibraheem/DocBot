import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imagebutton/imagebutton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            SvgPicture.asset("images/scaffoldbg.svg"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/mio.jpg'),
                ),
                Text(
                  ' Welcome, mio ',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ImageButton(
                          children: <Widget>[],
                          width: 91,
                          height: 36,
                          paddingTop: 5,
                          pressedImage: Image.asset(
                            "images/look.jpg",
                          ),
                          unpressedImage: Image.asset("images/mio.jpg"),
                          onTap: () {
                            print('test');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
