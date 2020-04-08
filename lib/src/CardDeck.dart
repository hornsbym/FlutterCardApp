import 'package:flutter/widgets.dart';
import 'package:intellij_flutter_app/src/CardDeckState.dart';
import 'package:intellij_flutter_app/src/PlayingCard.dart';

class CardDeck extends StatefulWidget {
  List<PlayingCard> cards;

  CardDeck(this.cards);

  @override
  CardDeckState createState() => CardDeckState();
}