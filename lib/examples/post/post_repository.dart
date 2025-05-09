import 'dart:convert';
import 'dart:io';

import 'package:flutter_starter_kit/examples/post/model/post.dart';
import 'package:flutter_starter_kit/examples/post/model/post_details.dart';
import 'package:flutter_starter_kit/examples/user/model/user.dart';
import 'package:flutter_starter_kit/src/base_list.dart';
import 'package:flutter_starter_kit/src/bloc_patterns/details/details_repository.dart';
import 'package:flutter_starter_kit/src/filter_list.dart';
import 'package:http/http.dart' as http;

class PostListRepository implements BaseListRepository<Post> {
  @override
  Future<List<Post>> getAll() => _getPostFromUrl();
}

class FilterPostListRepository implements FilterListRepository<Post, User> {
  @override
  Future<List<Post>> getAll() => _getPostFromUrl();

  @override
  Future<List<Post>> getBy(User filter) =>
      _getPostFromUrl(query: {'userId': filter.id});
}

class PostDetailsRespository implements DetailsRepository<Post, int> {
  @override
  Future<Post?> getById(int? id) async {
    final uri = Uri(
      scheme: 'http',
      host: 'jsonplaceholder.typicode.com',
      path: 'posts/$id',
    );
    final response = await http.get(uri);
    if (response.statusCode == HttpStatus.notFound) {
      return null;
    } else if (response.statusCode != HttpStatus.ok) {
      throw Exception('Failed to load post with id: $id');
    }
    final postJson = json.decode(response.body) as Map;
    return PostDetails.fromJson(postJson);
  }
}

Future<List<Post>> _getPostFromUrl({Map<String, dynamic>? query}) async {
  final uri = Uri(
    scheme: 'http',
    host: 'jsonplaceholder.typicode.com',
    path: 'posts',
    queryParameters: query,
  );
  final response = await http.get(uri);
  if (response.statusCode != HttpStatus.ok) {
    throw Exception('Failed to load post');
  }
  final dynamic postsJson = json.decode(response.body);
  if (postsJson is List) {
    final posts = postsJson.map((item) => Post.fromJson(item)).toList();
    return posts..shuffle();
  }
  return [];
}
