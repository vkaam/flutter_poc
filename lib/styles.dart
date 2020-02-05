import 'package:flutter/material.dart';

import 'main.dart';

class Styles {
  static const double hzScreenPadding = 18;

  static final TextStyle baseTitle =
      TextStyle(fontSize: 11, fontFamily: 'Roboto', package: MyApp.pkg);
  static final TextStyle baseBody =
      TextStyle(fontSize: 11, fontFamily: 'OpenSans', package: MyApp.pkg);

  static final TextStyle appHeader =
      baseTitle.copyWith(color: Color(0xFF0e0e0e), fontSize: 36, height: 1);

  static final TextStyle cardTitle =
      baseTitle.copyWith(height: 1, color: Color(0xFF484848), fontSize: 25);
  static final TextStyle cardSubtitle =
      baseBody.copyWith(color: Color(0xFF484848), height: 1.5, fontSize: 10);
  static final TextStyle cardAction = baseBody.copyWith(
      color: Color(0xFF484848),
      fontSize: 10,
      height: 1,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1);

  static final TextStyle hotelsTitleSection = baseBody.copyWith(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 2,
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: Colors.grey,
        offset: Offset(1.0, 1.0),
      ),
    ],
  );
  static final TextStyle hotelTitle = baseBody.copyWith(
      color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600);
  static final TextStyle hotelPrice =
      baseBody.copyWith(color: Color(0xff4d4d4d), fontSize: 13);
  static final TextStyle hotelScore =
      baseBody.copyWith(color: Color(0xff0e0e0e));
  static final TextStyle hotelData = baseBody.copyWith(color: Colors.grey[700]);
}
