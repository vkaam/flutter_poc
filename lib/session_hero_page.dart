import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc_flutter/content/data.dart';
import 'package:poc_flutter/styles.dart';

class SessionHeroPage extends StatelessWidget {
  SessionHeroPage(this.session);
  Session session;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: session.teamColor,
      body: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(32.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                  child: Image.asset(
                    "images/${session.image}",
                    height: 200,
                  ),
                  fit: BoxFit.fill,
                ))),
        Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(session.title,
                textAlign: TextAlign.center, style: Styles.heroTitle)),
        Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
                child: Text(session.description, style: Styles.heroSubtitle))),
        FlatButton(
            color: Colors.grey[300],
            child: new Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ]),
    );
  }
}
