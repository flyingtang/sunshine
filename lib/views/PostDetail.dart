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
    Widget titleSection = new Container(
      height: 180.0,
      padding: const EdgeInsets.only(
          left: 33.0, right: 33.0, top: 15.0, bottom: 15.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Expanded(
                flex: 2,
                child: new Center(
                  child: new Text(
                    "在最后一步，你将上面这些组装在一起。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中"
                        .padLeft(4),
                    style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                )),
            new Expanded(
                flex: 1,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      new DateTime.now().toLocal().toString(),
                      style: new TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    new Text("我是作者",
                        style: new TextStyle(
                          color: Colors.grey[500],
                        ))
                  ],
                ))
          ],
        ),
      ),
    );

    Widget contentSection = new Container(
        padding: const EdgeInsets.only(left: 15.0, right: 10.0),
        child: this.post != null
            ? new Center(child: new Markdown(data: this.post["content"]))
            : new Text("none"));
    // TODO: implement build
    if (this.post == null) {
      _getOnePost();
    }
    return Scaffold(
      appBar: new AppBar(),
      body: new ListView(
        children: <Widget>[titleSection, contentSection],
      ),
    );
  }
}
