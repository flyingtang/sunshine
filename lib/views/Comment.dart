import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
   @override
     State<StatefulWidget> createState() => CommentScreenState();
}

class CommentScreenState extends State<CommentScreen> {
    @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return Scaffold(
          appBar: new AppBar(
            title : new Text("评论")
          ),
        );
      }
}