import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mk_portfolio/src/services/api.dart';

final pageControllerProvider = StateProvider<PageController>((ref) {
  return PageController();
});

final fetchWorksProvider =
    FutureProvider<List<Map<String, String>>>((ref) async {
  final body = await fetchWorks();
  final json = jsonDecode(body) as Map<String, dynamic>;
  List<Map<String, String>> articles = [];
  for (final article in json['articles']) {
    articles.add({
      "id": article['id'],
      "title": article['title'],
      "imgUrl": article['imgUrl'],
    });
  }
  return articles;
});

final fetchBlogProvider =
    FutureProvider<List<Map<String, String>>>((ref) async {
  final body = await fetchBlog();
  final json = jsonDecode(body) as Map<String, dynamic>;
  List<Map<String, String>> articles = [];
  for (final article in json['articles']) {
    articles.add({
      "id": article['id'],
      "title": article['title'],
      "imgUrl": article['imgUrl'] ?? "",
    });
  }
  return articles;
});
