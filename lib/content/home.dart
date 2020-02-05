import 'package:flutter/material.dart';
import '../demo_h.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[TravelCardDemo()],
      ),
    );
  }
}
