import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/utils/netutils.dart';
import 'package:myapp/api/Api.dart' as urls;
import 'dart:convert';

class PostDetailScreen extends StatefulWidget {
  final postId;
  PostDetailScreen({Key key, this.postId}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PostDetailScreenState(postId: postId);
  }
}

class PostDetailScreenState extends State<PostDetailScreen> {
  String postId;
  Map<String, dynamic> post;
  PostDetailScreenState({Key key, this.postId});
  _getOnePost() {
    this.postId = postId;
    var url = urls.API.topic + this.postId;
    NetUtils.get(url, params: {"mdrender": false}).then((data) {
      Map<String, dynamic> obj = json.decode(data);
      setState(() {
        this.post = obj["data"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (this.post == null) {
      _getOnePost();
    }
    return Scaffold(
      appBar: new AppBar(),
      body: new Center(
          child: this.post != null
              ? new Center(child: new Markdown(data: this.post["content"]))
              : new Text("none")),
    );
  }
}
