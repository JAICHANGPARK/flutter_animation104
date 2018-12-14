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
      body: Center(
        child: Container(
          width: 40.0,
          height: 10.0,
          color: Colors.green,
        ),
      ),
    );
  }
}
