import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/examples/post/model/post.dart';
import 'package:flutter_starter_kit/examples/post/post_repository.dart';
import 'package:flutter_starter_kit/examples/post/post_screen.dart';
import 'package:flutter_starter_kit/src/base_list.dart';

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List App w/o pagination",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => BaseListBloc<Post>(PostListRepository())..loadItems(),
        child: const PostScreen(),
      ),
    );
  }
}
