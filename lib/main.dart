import 'package:flutter/material.dart';
import 'package:profile_page/chatbot.dart';

import 'home_page.dart';

void main() => runApp(DogBot());

class DogBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        ChatBot.id: (context) => ChatBot(),
      },
    );
  }
}
