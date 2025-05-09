import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/examples/post/model/post.dart';

class PostItemWidget extends StatelessWidget {
  final Post post;
  final ValueSetter<Post>? onPostSelected;
  const PostItemWidget({
    super.key,
    required this.post,
    required this.onPostSelected,
  });

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(post.title),
        onTap: () => onPostSelected?.call(post),
      );
}
