import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/examples/post/model/post.dart';
import 'package:flutter_starter_kit/examples/post/widgets/post_item_widget.dart';
import 'package:flutter_starter_kit/src/view.dart';

class PostsListWidget extends StatelessWidget {
  final List<Post> posts;
  final VoidCallback? onRefresh;
  final ValueSetter<Post>? onPostSelected;

  const PostsListWidget({
    super.key,
    required this.posts,
    this.onRefresh,
    this.onPostSelected,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshView(
      child: ListView.separated(
          itemCount: posts.length,
          itemBuilder: (context, index) => PostItemWidget(
                post: posts[index],
                onPostSelected: onPostSelected,
              ),
          separatorBuilder: (context, index) => const Divider(
                height: 1,
              )),
    );
  }
}
