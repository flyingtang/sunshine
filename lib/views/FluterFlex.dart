import 'package:flutter/material.dart';

class FluterFlex extends StatelessWidget {
  FluterFlex({this.time, this.title, this.comment, this.pic});

  String time, title, comment, pic;

  @override
  Widget build(BuildContext context) {
    final testColor = Colors.grey;

    return new Center(
      child: new Container(
        height: 80.0,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //子组件的排列方式为主轴两端对齐

          children: <Widget>[
            new Expanded(
              flex: 1, //这个item占据剩余空间的份数，因为总数为3，所以此处占据1/3
              child:  Image.network(
                this.pic,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
            new Expanded(
              flex: 2, //这个item占据剩余空间的份数，因为总数为3，所以此处占据2/3
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start, //子组件的在交叉轴的对齐方式为起点
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, //子组件在主轴的排列方式为两端对齐
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: new Text(
                      this.title,
                      style: new TextStyle(
                          // fontSize: 18.0
                          ),
                    ),
                  ),
                  new Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: new Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween, //子组件在主轴的排列方式为两端对齐
                        children: <Widget>[
                          new Text(
                            this.time,
                            style: new TextStyle(
                              color: testColor,
                              fontSize: 12.0,
                            ),
                          ),
                          new Text(
                            this.comment,
                            style: new TextStyle(
                              color: testColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
