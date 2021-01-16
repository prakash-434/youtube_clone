import 'package:flutter/material.dart';

import 'appbar.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget eachvideo(String asset, String title) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(asset),
            Positioned.fill(
              bottom: 10.0,
              right: 10.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "20:10",
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.black,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.jpg'),
            ),
            title: Text(
              "$title",
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              "ICC",
            ),
            trailing: Icon(Icons.more_vert, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 10.0,
          child: Container(
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottomnavbar,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            eachvideo("assets/images/img1.jpg", "WC highlights.Ind vs Aus"),
            eachvideo("assets/images/img2.jpg", "Wc highlights.Eng Won"),
            eachvideo("assets/images/img3.jpg", "Wc highlights.WC Review"),
            eachvideo("assets/images/img4.jpg", "Wc highlights.Rohits Century"),
            eachvideo("assets/images/img5.jpg", "Wc highlights.Biggest Sixes"),
          ],
        ),
      ),
    );
  }
}
