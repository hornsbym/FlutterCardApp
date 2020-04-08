import 'package:flutter/cupertino.dart';
import 'package:intellij_flutter_app/src/CardTableState.dart';

/// Represents a "deck" of cards.
///
/// Maintains state so that the card order can be tracked.
class CardTable extends StatefulWidget {
  void shuffle () {}
  @override
  CardTableState createState()  => CardTableState();
}