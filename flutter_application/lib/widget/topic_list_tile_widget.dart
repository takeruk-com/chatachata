import 'package:flutter/material.dart';

class TopicListTileWidget extends StatelessWidget {
  const TopicListTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text("マイトピックタイトル"),
      subtitle: Text("サブタイトル"),
    );
  }
}
