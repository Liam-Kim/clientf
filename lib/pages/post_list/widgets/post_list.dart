import 'package:clientf/enginf_clientf_service/enginf.post.model.dart';
import 'package:clientf/pages/post_list/widgets/post_list_item.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  PostList({Key key, @required this.posts, this.controller}) : super(key: key);

  final List<EnginePost> posts;
  final controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // itemExtent: 120.0,
      itemCount: posts.length,
      controller: controller,
      itemBuilder: (context, i) {
        return PostListItem(posts[i]);
      },
    );
  }
}
