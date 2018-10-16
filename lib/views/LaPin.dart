import 'package:flutter/material.dart';

class LapinScreen extends StatefulWidget {
   @override
     State<StatefulWidget> createState() => LapinScreenState();
}

class LapinScreenState extends State<LapinScreen> {
    @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return Scaffold(
          appBar: new AppBar(
            title : new Text("辣品")
          ),
        );
      }
}