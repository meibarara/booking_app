import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
        children: <Widget>[
          Container(
            height: 250.0,
            margin: EdgeInsets.only(
                left: 20.0, top: 20.0, right: 20.0, bottom: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Image(
                      image: AssetImage("assets/images/2.jpg"),
                      height: 200.0,
                      width: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Image(
                      image: AssetImage("assets/images/2.jpg"),
                      height: 200.0,
                      width: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Image(
                      image: AssetImage("assets/images/2.jpg"),
                      height: 200.0,
                      width: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Image(
                      image: AssetImage("assets/images/2.jpg"),
                      height: 200.0,
                      width: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 15.0,
            margin: EdgeInsets.only(left: 30.0),
            child: Text("Artikel", style: TextStyle(fontFamily: "Latha-bold"),),
          ),
          Container(
            height: 250.0,
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(left: 10.0, right: 5.0, bottom: 10.0, top: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Image(
                      image: AssetImage("assets/images/2.jpg"),
                      height: 100.0,
                      width: 270.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Image(
                      image: AssetImage("assets/images/2.jpg"),
                      height: 100.0,
                      width: 270.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Image(
                      image: AssetImage("assets/images/2.jpg"),
                      height: 100.0,
                      width: 270.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}