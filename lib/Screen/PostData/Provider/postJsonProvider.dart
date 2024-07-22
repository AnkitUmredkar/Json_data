import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_data/Screen/PostData/Model/postModelClass.dart';

class PostJsonProvider extends ChangeNotifier {
  late PostModel postModel;

  Future<void> initPost() async {
    String json = await rootBundle.loadString('assets/json/post/post.json');
    final response = jsonDecode(json);
    postModel = PostModel.fromJson(response);
    notifyListeners();
  }

  PostJsonProvider() {
    initPost();
  }
}
