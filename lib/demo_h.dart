import 'package:flutter/material.dart';

import 'team_member_list.dart';
import 'styles.dart';
import './content/data.dart';
import 'session_card_list.dart';

class TravelCardDemo extends StatefulWidget {
  @override
  _TravelCardDemoState createState() => _TravelCardDemoState();
}

class _TravelCardDemoState extends State<TravelCardDemo> {
  List<Session> _sessionList;
  Session _currentSession;

  @override
  void initState() {
    super.initState();
    var data = sessions;
    _sessionList = data;
    _currentSession = _sessionList[1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: SizedBox()),
            Text(
              'Student Conference',
              overflow: TextOverflow.ellipsis,
              style: Styles.appHeader,
              maxLines: 2,
            ),
            TravelCardList(
              sessions: _sessionList,
              onSessionChange: _handleCityChange,
            ),
            HotelList(_currentSession.teamMembers),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }

  void _handleCityChange(Session session) {
    setState(() {
      this._currentSession = session;
    });
  }

  Widget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: Icon(Icons.menu, color: Colors.black),
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      actions: <Widget>[
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Styles.hzScreenPadding),
          child: Icon(Icons.search, color: Colors.black),
        )
      ],
    );
  }
}
