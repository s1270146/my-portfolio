import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mk_portfolio/constants.dart';

Future<String> fetchWorks() async {
  final url = "$apiUrl/works";
  final response = await http.get(Uri.parse(url));
  return utf8.decode(response.body.codeUnits);
}

Future<String> fetchBlog() async {
  final url = "$apiUrl/blog";
  final response = await http.get(Uri.parse(url));
  return utf8.decode(response.body.codeUnits);
}
