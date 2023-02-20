import 'package:flutter/material.dart';

class Topic {
  String title;
  Topic(
    this.title,
  );
}

class TopicListModel extends ChangeNotifier {
  List<Topic> topics = [
    Topic("マイトピックタイトル1"),
    Topic("マイトピックタイトル2"),
    Topic("マイトピックタイトル3"),
    Topic("マイトピックタイトル4"),
    Topic("マイトピックタイトル5"),
  ];
}
