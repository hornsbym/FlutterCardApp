import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intellij_flutter_app/src/CardDeck.dart';

import 'CardTable.dart';
import 'PlayingCard.dart';

// Represents the blueprints for making cards.
const suits = ["H", "S", "D", "C"];
const ranks = [
  "A",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "J",
  "Q",
  "K"
];

/// This class represents the state of cards in a card stack.
///
/// Necessary for maintaining/interacting with the cards.
class CardTableState extends State<CardTable>
    with SingleTickerProviderStateMixin {
  CardDeck _deck;

  CardTableState() {
    _deck = _makeCards();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: <Widget>[
        this._deck,
        Container(
          margin: EdgeInsets.only(top: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                  child: Text("Shuffle"),
                  onPressed: this._shuffleCards,
                  ),
              RaisedButton(
                  child: Text("Reset"),
                  onPressed: this._resetCards,
                ),
            ],
          )
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  /// Creates the deck of cards.
  CardDeck _makeCards() {
    List<PlayingCard> cards = List<PlayingCard>();

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new PlayingCard(rank, suit);
        cards.add(card);
      }
    }

    return CardDeck(cards);
  }

  /// Puts the deck back in order
  void _resetCards() {
    setState(() {
      this._deck = this._makeCards();
    });
    final snackBarAlert = SnackBar(content: Text("Deck ordered."), duration: Duration(milliseconds: 1500),);
    Scaffold.of(context).showSnackBar(snackBarAlert);
  }

  /// Randomly changes the order of cards in the deck.
  void _shuffleCards() {
    this._deck.cards.map((el) {
      print(el);
    });

    var tempList = this._deck.cards;

    tempList.shuffle();

    setState(() {
      _deck = CardDeck(tempList);
    });

    final snackBarAlert = SnackBar(content: Text("Deck shuffled."), duration: Duration(milliseconds: 1500),);
    Scaffold.of(context).showSnackBar(snackBarAlert);
  }
}
