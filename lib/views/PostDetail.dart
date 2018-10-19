// import 'package:flutter/material.dart';
// // import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:myapp/utils/netutils.dart';
// import 'package:myapp/api/Api.dart' as urls;
// import 'dart:convert';
// import 'package:flutter_html/flutter_html.dart';

// class PostDetailScreen extends StatefulWidget {
//   final postId;
//   PostDetailScreen({Key key, this.postId}) : super(key: key);
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return new PostDetailScreenState(postId: postId);
//   }
// }

// class PostDetailScreenState extends State<PostDetailScreen> {
//   String postId;
//   Map<String, dynamic> post;
//   PostDetailScreenState({Key key, this.postId});
//   _getOnePost() {
//     this.postId = postId;
//     var url = urls.API.topic + this.postId;
//     NetUtils.get(url, params: {"mdrender": false}).then((data) {
//       Map<String, dynamic> obj = json.decode(data);
//       setState(() {
//         this.post = obj["data"];
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget titleSection = new Container(
//       height: 180.0,
//       padding: const EdgeInsets.only(
//           left: 33.0, right: 33.0, top: 15.0, bottom: 15.0),
//       child: new Center(
//         child: new Column(
//           children: <Widget>[
//             new Expanded(
//                 flex: 2,
//                 child: new Center(
//                   child: new Text(
//                     "在最后一步，你将上面这些组装在一起。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中。这些widget放置到ListView中"
//                         .padLeft(4),
//                     style: new TextStyle(
//                       fontSize: 20.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     maxLines: 2,
//                     textAlign: TextAlign.center,
//                   ),
//                 )),
//             new Expanded(
//                 flex: 1,
//                 child: new Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     new Text(
//                       new DateTime.now().toLocal().toString(),
//                       style: new TextStyle(
//                         color: Colors.grey[500],
//                       ),
//                     ),
//                     new Text("我是作者",
//                         style: new TextStyle(
//                           color: Colors.grey[500],
//                         ))
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );

//     // Widget contentSection = new Container(
//     //     padding: const EdgeInsets.only(left: 15.0, right: 10.0),
//     //     child: this.post != null
//     //         ? new Center(child: new Markdown(data: this.post["content"]))
//     //         : new Text("none"));
//     // // TODO: implement build
//     // if (this.post == null) {
//     //   _getOnePost();
//     // }
//     return Scaffold(
//       appBar: new AppBar(),
//       body: new ListView(
//         children: <Widget>[titleSection, SingleChildScrollView(child:
//         Html(
//           data: """<div class=\"markdown-text\"><h2>活动说明</h2>\n<h3>本次活动由蚂蚁金服-国际事业群-前端团队承办。</h3>\n<blockquote>\n<ul>\n<li>时间：2018 年 9 月 23 日 14:00 - 18:00</li>\n<li>地点：浙大玉泉校区邵逸夫科学馆 117 会堂</li>\n<li>报名链接：<a href=\"https://www.bagevent.com/event/1843696\">https://www.bagevent.com/event/1843696</a></li>\n</ul>\n</blockquote>\n<hr>\n<h2>活动的主题如下（包括PPT）：</h2>\n<h3>《DataHub2 - 你的最后一个 mock 方案》</h3>\n<p>PPT：<a href=\"https://www.yuque.com/attachments/yuque/0/2018/pdf/95383/1537925050307-1fa501d9-b3fd-44c7-953b-8291d2c86ea8.pdf\" title=\"size:5046844\">download: DataHub.pdf</a></p>\n<p>分享时间：14:00 - 14:40</p>\n<p>主讲人介绍：张宇恒(<a href=\"https://github.com/zhangyuheng\">@zhangyuheng</a>) - 蚂蚁国际高级前端工程师，<a href=\"https://github.com/macacajs/macaca-datahub\">DataHub</a> 核心开发，格言：To Be A Better Hacker 。</p>\n<p><img src=\"//static.cnodejs.org/FuvmcnVJIRbF-xqcrJDFfiag0bSi\" alt=\"1536220954455-08024e18-182c-4e9c-8534-99ca63d0dd4b.png | left\"></p>\n<p>内容：DataHub 是为解决复杂业务场景而诞生，但同时能够渐进式退化，为项目研发提供通用的 mock 解决方案。舒适的 Web 研发体验，从研发、测试、联调阶段贯穿始终的数据提供能力，剖析如何设计一个 mock 平台的核心理念和实践范式。从开发瓶颈和服务演进的角度讲述「<strong>最后一个</strong>」mock 方案。</p>\n<h3>《蚂蚁国际前端工程体系》</h3>\n<p>分享时间：14:50 - 15:30</p>\n<p>主讲人介绍：徐达峰(<a href=\"https://github.com/xudafeng\">@xudafeng</a>) - 蚂蚁金服前端技术专家，阿里开源测试框架 <a href=\"https://github.com/alibaba/macaca\">Macaca</a> 作者，<a href=\"https://github.com/xudafeng/autoresponsive-react\">autoresponsive-react</a> 作者。</p>\n<p><img src=\"//static.cnodejs.org/FgCUNY56nLYcXl7pXP1zaCIKNmOJ\" alt=\"1536221094365-b2da0ffa-9103-478b-bd39-c8de3f06a0f2.png | left\"></p>\n<p>内容：介绍蚂蚁金服国际部门在国际化与本土化进程中遇到的挑战和成长。剖析中国技术出海的特点和如何快速构建合适的前端工程体系，也包括工具体系、持续交付、自动化测试等几个方向上的实践和思考。同时也会涉及 Macaca 技术生态的国际化成长。</p>\n<h3>《Node.js 微服务实践》</h3>\n<p>PPT：<a href=\"https://www.yuque.com/attachments/yuque/0/2018/pdf/95383/1537925145070-a192b890-1cbb-47da-bd4d-842671ceac98.pdf\" title=\"size:5178626\">download: Node.js 微服务实践.pdf</a></p>\n<p>分享时间：15:40 - 16:20</p>\n<p>主讲人介绍：高晓晨(<a href=\"https://github.com/gxcsoccer\">@gxcsoccer</a>) - 蚂蚁金服前端技术专家，企业级 Web 框架应用框架 <a href=\"https://github.com/eggjs\">Egg.js</a> 核心成员，<a href=\"https://github.com/alipay/sofa-rpc-node\">sofa-rpc-node</a> 作者。</p>\n<p><img src=\"//static.cnodejs.org/Fk0AYqZmVT5QmcnpFKO8AKCGjM-l\" alt=\"1536222500407-c710cca5-36d4-4685-a9d2-ba34163c39ff.png | left\"></p>\n<p>内容：介绍金服如何用 Node.js 来实现微服务，包括 RPC 原理、服务发现、负载均衡等话题。同时会介绍一下如何使用和扩展我们开源的 <a href=\"https://github.com/alipay/sofa-rpc-node\">sofa-rpc-node</a> 项目来帮助外部实现 RPC，为系统架构带来新活力。</p>\n<h3>《GraphQL 生态介绍》</h3>\n<p>PPT：<a href=\"https://www.yuque.com/attachments/yuque/0/2018/pdf/95383/1537925158919-2cd3bd39-31bd-4377-b347-33213489cde2.pdf\" title=\"size:4043353\">download: GraphQL.pdf</a></p>\n<p>分享时间：16:30 - 17:10</p>\n<p>主讲人介绍：张开宇(<a href=\"https://github.com/zhangkaiyulw\">@zhangkaiyulw</a>) - 前 Oracle 北京，香港 Beecrazy 员工。Ruby on Rails 贡献者之一。在后端，前端，移动端，以及 React Native 开发上，有丰富的经验。曾尝试将 iOS 系统的 Cocoa Touch API 风格移植到 HTML 网页中，并开发了基于其的一款国际象棋应用。有丰富大量的开源代码。</p>\n<p><img src=\"//static.cnodejs.org/Fln08dUMEWfnEFwd4gmpC8QJJP9O\" alt=\"1536220909272-71b9e8f9-1665-4b84-85a0-26d686b8a7c5.png | left\"></p>\n<p>内容：本次演讲介绍实现GraphQL API的工具，包括 apollo-server、merge-graphql-schemas、graphql-middleware、amur 脚手架工具以及他们的用法。并五分钟内演示带有上传功能，混合字段类型的，带有数据关联的复杂系统的 API。</p>\n<h3>《 Megalo - 考拉的小程序解决方案》</h3>\n<p>PPT：<a href=\"https://www.yuque.com/attachments/yuque/0/2018/pdf/95383/1537925172399-4ed1c6cc-479e-4e4a-b537-0b4353da8198.pdf\" title=\"size:1943122\">download: megalo-考拉的小程序解决方案.pdf</a></p>\n<p>分享时间：17:20 - 18:00</p>\n<p>主讲人介绍：网易考拉前端工程师，吴子然<a href=\"https://github.com/elcarim5efil\">@elcarim</a>，<a href=\"https://github.com/kaola-fed/mpregular\">mpregular</a>、<a href=\"https://github.com/kaola-fed/megalo\">megalo</a> 核心开发。</p>\n<p><img src=\"//static.cnodejs.org/Fh_VjuoZMUe_g5Tof53qU1iZ-wh_\" alt=\"网易考拉_吴子然.jpeg | left\"></p>\n<p>内容：介绍考拉的小程序框架发展历程，我们是如何在现有框架上做改造，在小程序上支持更多的 Vue 特性，让跨端开发变得更简单。</p>\n<hr>\n<h2>现场照片</h2>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537924550598-bf24d186-3ff1-494d-a4f2-3702fac3aa6a.png\" alt=\"image.png | left | 827x272\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537924563365-f723e300-5223-4fc4-8751-416c98b9afd3.png\" alt=\"image.png | left | 827x257\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537924608159-042af9f1-0880-4003-a3ec-2697cf38bf18.png\" alt=\"image.png | left | 827x620\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537924578426-21656c2f-8b66-4452-915d-51b3320fbabb.png\" alt=\"image.png | left | 827x620\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537924629304-e8547f9d-2bed-4b1c-bf50-cfbdd52f9d8e.png\" alt=\"image.png | left | 827x620\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537926665393-17bb8bbb-d585-4bc9-a7cc-80cad0d6596f.png\" alt=\"image.png | left | 827x602\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537924638476-713a60a3-43d9-4261-9f2e-672e4cf4487d.png\" alt=\"image.png | left | 827x620\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537924701018-cd3800f5-3940-4877-844c-29b7f1015e37.png\" alt=\"image.png | left | 827x615\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537926870402-15f18f5d-dbe9-4faf-a1b6-301e7fe5fe67.png\" alt=\"image.png | left | 827x606\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537926843721-002a0b79-235d-456e-8daf-5f3fde47b5b0.png\" alt=\"image.png | left | 827x604\"></p>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1537925309980-a2262bf0-d3e6-4152-8150-1c8487cfda69.png\" alt=\"image.png | left | 827x607\"></p>\n<h3>特别感谢浙大软件学院对本次活动提供场地支持！</h3>\n<hr>\n<h2>关于 NodeParty</h2>\n<p><img src=\"https://cdn.nlark.com/yuque/0/2018/png/95383/1536228236464-a496d8a0-4862-4946-af56-b55fb7c68af3.png\" alt=\"image | center\"></p>\n<p>NodeParty 品牌诞生于 CNode 社区，杭州 NodeParty 是由大搜车（Souche Inc.）发起的一个面向 Node.js 爱好者的技术分享聚会，希望能够构建一个持续的分享学习的平台，一起发展 Node.js 生态。</p>\n</div>
//           """
//         )
//         ,)],
//       ),
//     );
//   }
// }
