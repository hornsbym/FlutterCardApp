import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import 'CardDeck.dart';
import 'PlayingCard.dart';

class CardDeckState extends State<CardDeck>
    with SingleTickerProviderStateMixin {
  // Components for animation.
  AnimationController animController;
  Animation<double> rotationAnimation;
  Animation<double> slideAnimation;
  Animation<double> fadeAnimation;

  int topCardIndex = 0;
  int nextIndex = 1;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    slideAnimation = Tween<double>(begin: 0, end: -50).animate(animController)
      ..addListener(() {
        setState(() {
        });
      });

    rotationAnimation =
        Tween<double>(begin: 0, end: .2 * math.pi).animate(animController)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                cycleCards();
              });
              animController.reset();
            }
          });

    fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(animController);

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: this.playAnimation,
        child: Stack(children: <Widget>[
          widget.cards[nextIndex],
          Transform.rotate(
              child: Transform.translate(
                child: FadeTransition(
                    child: widget.cards[topCardIndex],
                    opacity: fadeAnimation
                ),
                offset: Offset(0, slideAnimation.value),
              ),
              angle: rotationAnimation.value)
        ]));
  }

  /// Increments the deck indexes.
  ///
  /// Logically allows deck to cycle through circularly.
  void cycleCards(){
    setState(() {
      if (topCardIndex == widget.cards.length - 2) {
        this.topCardIndex++;
        this.nextIndex = 0;
      } else if (topCardIndex == widget.cards.length - 1){
        this.topCardIndex = 0;
        this.nextIndex = topCardIndex + 1;
      } else {
        this.topCardIndex++;
        this.nextIndex = topCardIndex + 1;;
      }
    });
  }


  void playAnimation() {
    animController.forward();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
