import 'package:flutter/material.dart';

class BrickPage extends StatefulWidget {
  @override
  _BrickPageState createState() => _BrickPageState();
}

class _BrickPageState extends State<BrickPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation 104"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Brick(),
          Brick(),
          Brick(),
          Brick(),
        ],
      ),
    );
  }
}

class Brick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 40.0,
      height: 10.0,
      color: Colors.green,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.green),
    );
  }
}
