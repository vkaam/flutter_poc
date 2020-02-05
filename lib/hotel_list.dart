import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'styles.dart';

class HotelList extends StatefulWidget {
  final List<String> teamMembers;

  HotelList(this.teamMembers);

  @override
  _HotelListViewState createState() => _HotelListViewState();
}

class _HotelListViewState extends State<HotelList>
    with SingleTickerProviderStateMixin {
  AnimationController _anim;

  List<String> _oldTeamMembers;

  @override
  void initState() {
    _anim =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _anim.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_oldTeamMembers != widget.teamMembers) {
      _anim.forward(from: 0);
    }
    _oldTeamMembers = widget.teamMembers;
    Size size = MediaQuery.of(context).size;
    return Opacity(
      opacity: _anim.value,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Styles.hzScreenPadding * 1.5, vertical: 10),
        child: Container(
          width: 400,
          height: size.height * .25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Team members'.toUpperCase(),
                  style: Styles.hotelsTitleSection),
              for (String teamMember in _oldTeamMembers)
                Text(teamMember, style: Styles.hotelTitle)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStars(int count) {
    List<Widget> stars = [];
    for (int i = 0; i < count; i++) {
      stars.add(Icon(Icons.star, color: Color(0xFFfeda7d), size: 13));
    }
    return Row(children: stars);
  }
}
