import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/examples/common/error_message_widget.dart';
import 'package:flutter_starter_kit/examples/common/loading_indicator.dart';
import 'package:flutter_starter_kit/examples/post/model/post.dart';
import 'package:flutter_starter_kit/examples/post/widgets/post_list_empty_widget.dart';
import 'package:flutter_starter_kit/examples/post/widgets/posts_list_widget.dart';
import 'package:flutter_starter_kit/src/base_list.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/view/view_state_builder.dart';

typedef PostBloc = BaseListBloc<Post>;

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: ViewStateBuilder<List<Post>, PostBloc>(
        loading: (context) => const LoadingIndicator(),
        data: (context, posts) => PostsListWidget(
            posts: posts, onRefresh: context.read<PostBloc>().loadItems),
        refreshing: (context, posts) => PostsListWidget(
            posts: posts, onRefresh: context.read<PostBloc>().refreshItems),
        empty: (context) => const PostListEmptyWidget(),
        failure: (context, error) => ErrorMessageWidget(error: error),
      ),
    );
  }
}
