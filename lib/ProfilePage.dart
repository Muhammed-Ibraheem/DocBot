import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.blue[200]])),
    child:Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Container(
      child: Padding(
      padding:EdgeInsets.only(bottom: 40.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Icon(
            Icons.arrow_back_ios,
            size: 30.0,
            color: Colors.black87,
          ),
          Text(
            'Profile',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 22.0,
              letterSpacing: 2.0,
            ),
          ),
          Icon(
            Icons.edit,
            size: 30.0,
            color: Colors.black87,
          ),
        ],
      )
      )),
       Container(
         child: Padding(
             padding:EdgeInsets.only(top:0.0),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget> [
                 CircleAvatar(
                   backgroundImage: AssetImage("assets/user.jpg"),
                   radius: 80.0,
                 ),
                 SizedBox(height: 10.0,),
                 Text(
                   "Welcome User",
                   style: TextStyle(
                     fontSize: 22.0,
                     color: Colors.black87,
                   ),
                 ),
                 SizedBox(height: 40.0,)
               ]) ,
         ),
       )
      ,
       Container(
         child: Padding(
           padding:EdgeInsets.only(right:180),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
             Text(
             'Name :',
             style: TextStyle(
               color: Colors.black87,
               fontSize: 16.0,
               letterSpacing: 2.0,
             ),
           ),
           SizedBox(height: 20.0),
           Text(
             'Phone:',
             style: TextStyle(
               color: Colors.black87,
               fontSize: 16.0,
               letterSpacing: 2.0,
             ),
           ),
           SizedBox(height: 20.0),
           Text(
             'Gender:',
             style: TextStyle(
               color: Colors.black87,
               fontSize: 16.0,
               letterSpacing: 2.0,
             ),
           ),
           SizedBox(height: 20.0),
           Text(
             'Birth Date:',
             style: TextStyle(
               color: Colors.black87,
               fontSize: 16.0,
               letterSpacing: 2.0,
             ),
           ),
           SizedBox(height: 20.0),
           ]),
         ),
      ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Icon(
              Icons.logout,
              color: Colors.black,
              size: 45.0,

            ),
              SizedBox(height: 150.0,)
    ]),

    ]),
    ));
  }
}