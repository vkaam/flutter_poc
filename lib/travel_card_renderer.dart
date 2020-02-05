import 'package:flutter/material.dart';
import 'package:poc_flutter/session_hero_page.dart';
import 'styles.dart';
import './content/data.dart';

class TravelCardRenderer extends StatelessWidget {
  final double offset;
  final double cardWidth;
  final double cardHeight;
  final Session session;

  const TravelCardRenderer(this.offset,
      {Key key, this.cardWidth = 250, @required this.session, this.cardHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      margin: EdgeInsets.only(top: 8),
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => SessionHeroPage(session))),
        child: Hero(
          tag: session.id,
          child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              // Card background color & decoration
              Container(
                margin:
                    EdgeInsets.only(top: 30, left: 12, right: 12, bottom: 12),
                decoration: BoxDecoration(
                  color: session.teamColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 4 * offset.abs()),
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10 + 6 * offset.abs()),
                  ],
                ),
              ),
              // City image, out of card by 15px
              Positioned(top: -15, child: _buildCityImage()),
              // City information
              _buildCityData()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCityImage() {
    double maxParallax = 30;
    double globalOffset = offset * maxParallax * 2;
    double cardPadding = 28;
    double containerWidth = cardWidth - cardPadding;
    return Container(
      height: cardHeight,
      width: containerWidth,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          _buildPositionedLayer("images/${session.image}", containerWidth * .8,
              maxParallax * .1, globalOffset),
        ],
      ),
    );
  }

  Widget _buildCityData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // The sized box mock the space of the city image
        SizedBox(width: double.infinity, height: cardHeight * .57),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(session.title.toString(),
              style: Styles.cardTitle, textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(session.description,
              style: Styles.cardSubtitle,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FlatButton(
          disabledColor: Colors.transparent,
          color: Colors.transparent,
          child: Text('Learn More'.toUpperCase(), style: Styles.cardAction),
          onPressed: null,
        ),
        SizedBox(height: 8)
      ],
    );
  }

  Widget _buildPositionedLayer(
      String path, double width, double maxOffset, double globalOffset) {
    double cardPadding = 24;
    double layerWidth = cardWidth - cardPadding;
    return Positioned(
        left: ((layerWidth * .5) - (width / 2) - offset * maxOffset) +
            globalOffset,
        bottom: cardHeight * .45,
        child: Image.asset(
          path,
          height: cardHeight * .40,
          width: width,
        ));
  }
}
