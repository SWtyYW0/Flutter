import 'dart:convert';
import 'package:http/http.dart';
import 'package:practice_7/pages/profile/profile_model/post.dart';

class ProfileRepository {
  Future<List<Post>> getPosts() async {
    Response response = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => Post.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}