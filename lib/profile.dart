import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'App for wallpapers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg"),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(color: Colors.black.withOpacity(0.1))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 75,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg"))),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Lauren",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "google",
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("German",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "google",
                      fontSize: 30.0,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 3.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Huntingon Beach, California, USA",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "google",
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 15.0,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * .75,
                  height: 3.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      50.0,
                    ),
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Lauren Christine German is an American actress. She had her first major role in the 2002  romantic drama film - A Walk to Remember, followed by roles in the horror films The Texax Chainsaw Massacre and Hostel: Part II.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "google",
                      fontSize: 20.0,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ]));
  }
}
