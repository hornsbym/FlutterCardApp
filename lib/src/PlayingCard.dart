import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Represents a single card in a stack of cards.
class PlayingCard extends StatelessWidget {
  final String rank;
  final String suit;

  /// The provided number should be the order the card was created in the stack.
  PlayingCard(this.rank, this.suit);

  /// Creates the icon for the card.
  Image createRankIcon() {
    Image returnImage;

    switch (this.suit) {
      case "H":
        returnImage = Image.asset("assets/images/heart.png");
        break;
      case "D":
        returnImage = Image.asset("assets/images/diamond.png");
        break;
      case "S":
        returnImage = Image.asset("assets/images/spade.png");
        break;
      case "C":
        returnImage = Image.asset("assets/images/club.png");
        break;
    }
    return returnImage;
  }

  /// Returns red for red suits and black for black suits.
  Color createFontColor() {
    Color returnColor;

    if (this.suit == "H" || this.suit == "D") {
      returnColor = Colors.red;
    } else {
      returnColor = Colors.black;
    }

    return returnColor;
  }

  @override
  Widget build(BuildContext context) {
    Image img = createRankIcon();
    Color fontColor = createFontColor();

    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        width: 100,
        height: 150,
      ),
      Positioned(
          top: 10,
          left: 10,
          child: Text(this.rank,
              style: TextStyle(
                  color: fontColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold))),
      Positioned(
          bottom: 10,
          right: 10,
          child: Text(this.rank,
              style: TextStyle(
                  color: fontColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold))),
      Positioned.fill(child: Align(alignment: Alignment.center, child: img)),
    ]);
  }
}
