import 'package:flutter/material.dart';

class MeScreen extends StatefulWidget {
   @override
     State<StatefulWidget> createState() => MeScreenState();
}

class MeScreenState extends State<MeScreen> {
    @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return Scaffold(
          appBar: new AppBar(
            title : new Text("我的")
          ),
        );
      }
}