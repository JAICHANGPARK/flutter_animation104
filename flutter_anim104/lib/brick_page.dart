import 'package:flutter/material.dart';

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
            Brick(),
            Brick(),
            Brick(),
            Brick(),
          ],
        ),
      ),
    );
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
