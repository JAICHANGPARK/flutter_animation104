import 'package:flutter/material.dart';
import 'dart:math' as math;

class BrickPage extends StatefulWidget {
  @override
  _BrickPageState createState() => _BrickPageState();
}

class _BrickPageState extends State<BrickPage> with TickerProviderStateMixin {
  AnimationController animationController;
  Tween tween;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    tween = Tween(begin: 0.0, end: 1.0);

    animationController.repeat();
  }

  //Bricks one
  Animation get animOne => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.0, 0.125, curve: Curves.linear)));

  Animation get animTwo => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.125, 0.25, curve: Curves.linear)));

  //TODO brick Two
  Animation get animThree => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.25, 0.375, curve: Curves.linear)));

  //TODO brick Three
  Animation get animFour => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.375, 0.5, curve: Curves.linear)));

  //TODO brick Four
  Animation get animFive => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.5, 0.625, curve: Curves.linear)));

  //TODO brick Four
  Animation get animSix => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.625, 0.75, curve: Curves.linear)));

  //TODO brick Seven
  Animation get animSeven => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.75, 0.875, curve: Curves.linear)));

  //TODO brick Seven
  Animation get animEight => tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.875, 1.0, curve: Curves.linear)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animation 104"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimationBrick(
              animation: [animOne, animTwo],
              animationController: animationController,
              marginLeft: 15.0,
              alignment: Alignment.centerRight,
            ),
            AnimationBrick(
              animation: [animThree, animEight],
              animationController: animationController,
              marginLeft: 15.0,
            ),
            AnimationBrick(
              animation: [animFour, animEight],
              animationController: animationController,
              marginLeft: 15.0,
            ),
            AnimationBrick(
              animation: [animFive, animSix],
              animationController: animationController,
              marginLeft: 15.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
}

class AnimationBrick extends AnimatedWidget {
  final AnimationController animationController;
  final List<Animation> animation;
  final double marginLeft;
  Alignment alignment;

  AnimationBrick(
      {Key key,
      this.animationController,
      this.animation,
      this.marginLeft,
      this.alignment = Alignment.centerRight})
      : super(key: key, listenable: animationController);

  Matrix4 clockWise(animation) =>
      Matrix4.rotationZ(animation.value * math.pi * 2.0 * 0.5);

  @override
  Widget build(BuildContext context) {
    var firstTransformation = clockWise(animation[0]);
    // TODO: implement build
    return Transform(
      alignment: alignment,
        transform: firstTransformation,
        child: Brick(
          marginLeft: marginLeft,
        ));
  }
}

class Brick extends StatelessWidget {
  final double marginLeft;

  Brick({this.marginLeft = 15.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: marginLeft),
      width: 40.0,
      height: 10.0,
//      color: Colors.green,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.green),
    );
  }
}
