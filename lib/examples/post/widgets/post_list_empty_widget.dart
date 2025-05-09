import 'package:flutter/material.dart';

class PostListEmptyWidget extends StatelessWidget {
  const PostListEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("No posts found"),
    );
  }
}
