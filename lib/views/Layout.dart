import 'package:flutter/material.dart';
import 'PostList.dart';
import 'Comment.dart';
import 'LaPin.dart';
import 'Me.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

//  state
class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  final pages = List<Widget>();
  @override
    void initState() {
      // TODO: implement initState
        pages
      ..add(PostListScreen())
      ..add(LapinScreen())
      ..add(CommentScreen())
      ..add(MeScreen());
      super.initState();
    }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment, color: _bottomNavigationColor),
              title: new Text("文章",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.hotel, color: _bottomNavigationColor),
              title: new Text("辣品",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment, color: _bottomNavigationColor),
              title: new Text("评论",
                  style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: _bottomNavigationColor),
              title: new Text("我",
                  style: TextStyle(color: _bottomNavigationColor))),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
