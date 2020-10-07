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
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,
        ), onPressed: () {  },),
        title: Text("Shopping Cart",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.amber[800],
      ),
      body: Stack(children: <Widget>[
         Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://previews.123rf.com/images/barmaleeva/barmaleeva1303/barmaleeva130300007/18338711-seamless-pattern-with-multicolored-circles-and-dots-on-white-background.jpg"),
                    fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(color: Colors.white.withOpacity(0.1))),      
         ),
         SingleChildScrollView(
           padding: EdgeInsets.all(10),
           child: Column(
             //crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.only (top:2.0,bottom: 2.0),
                 child: Container(
                          padding: EdgeInsets.all(10.0),
                          width:  MediaQuery.of(context).size.width-10.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 150.0,
                                width: 125.0,
                                decoration: BoxDecoration(image: DecorationImage(
                                  image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRRDd4zs7-bwgYbbKSlZ-l0lInvAIi6rxcr391byK4EqzdRRDeoAUX3G-03jJf6mfQZNFFe42M&usqp=CAc"),
                                 fit: BoxFit.contain,
                                )),
                                ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0),  
                                   child: Text("Plastic Chair",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 25.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.pink,
                                   )),),
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0),
                                   child: Text("Price : 650",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 13.0,
                                   color: Colors.pink,
                                   )),),
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0,top: 10.0),  
                                   child:Text("Quantity :   6",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 15.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.pink,
                                   )),),
                                 ]
                               )
                            ]
                          )
                        ),
               ),
                  Padding(
                    padding: EdgeInsets.only (top:2.0,bottom: 2.0),
                    child: Container(
                          padding: EdgeInsets.all(10.0),
                          width:  MediaQuery.of(context).size.width-20.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 150.0,
                                width: 125.0,
                                decoration: BoxDecoration(image: DecorationImage(
                                  image:  NetworkImage("https://i.pinimg.com/564x/74/60/73/746073e28980908be04170119835ffe8.jpg"),
                                 fit: BoxFit.contain,
                                )),
                                ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0),
                                   child: Text("Wall Mirror",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 25.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.pink,
                                   )),),
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0),  
                                   child:Text("Price : 1200",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 13.0,
                                   color: Colors.pink,
                                   )),),
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0,top: 10.0),  
                                   child:Text("Quantity :   1",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 15.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.pink,
                                   )),),
                                 ]
                               )
                            ]
                          )
                        ),
                  ),
                  
                     Padding(
                       padding:EdgeInsets.only (top:2.0,bottom: 2.0),
                       child: Container(
                          padding: EdgeInsets.all(10.0),
                          width:  MediaQuery.of(context).size.width-20.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                          color: Colors.cyan,
                           border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 150.0,
                                width: 125.0,
                                decoration: BoxDecoration(image: DecorationImage(
                                  image:  NetworkImage("https://www.decornation.in/wp-content/uploads/2020/01/designer-home-writing-desk-247x247.jpg"),
                                 fit: BoxFit.contain,
                                )),
                                ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0),
                                   child: Text("Study Table",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 25.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.pink,
                                   )),),
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0),  
                                   child:Text("Price : 1500",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 13.0,
                                   color: Colors.pink,
                                   )),),
                                   Container(
                                   padding: EdgeInsets.only(left: 10.0,top: 10.0),  
                                   child:Text("Quantity :   1",
                                   style:TextStyle(fontFamily: "google",
                                   fontSize: 15.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.pink,
                                   )),),
                                 ]
                               )
                            ]
                          )
                        ),
                     ),
                 
             ]
           )
         ),
         Container( padding: EdgeInsets.only(top:715),
           child: SizedBox( height: 50,
                     width: MediaQuery.of(context).size.width ,
                     child:RaisedButton(
                          child: Text("Checkout",style: TextStyle(fontSize:20),), 
                          color: Colors.amber[800],
                          onPressed: (){},)),
         ),
      ],)
    );
  }
}
