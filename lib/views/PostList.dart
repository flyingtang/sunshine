import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'FluterFlex.dart';

class PostListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PostListScreenState();
}

class PostListScreenState extends State<PostListScreen> {
  final _suggestions = <WordPair>[];
  //  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(title: new Text("文章列表")),
      body: _buildPost(),
    );
  }

  Widget _buildPost() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, index) {
        if (index.isOdd) return Divider();
        final i = index ~/ 2;
        if (i >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return new FluterFlex(_suggestions[i]);
      },
    );
  }

  // Widget _buildRow(WordPair pair) {
  //   return new FluterFlex(pair);
  // }
}

//   Widget _buildRow1(WordPair pair) {
//     return new Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         new Image.asset(
//           'images/sample.jpg',
//           height: 80.0,
//           width: 100.0,
//           fit: BoxFit.cover,
//         ),
//         new Container(
//           color: Colors.red,
//           child: new Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             mainAxisSize: MainAxisSize.max,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               new Text(
//                 pair.asCamelCase,
//               ),
//               new Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   new Text(
//                     new TimeOfDay.now().format(context),
//                     textAlign: TextAlign.left,
//                   ),
//                   new Text(
//                     " 223 评论",
//                     textAlign: TextAlign.right,
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
