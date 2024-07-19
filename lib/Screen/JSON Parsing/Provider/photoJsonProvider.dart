import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Model/photoModelData.dart';

class JsonProvider extends ChangeNotifier {
  List<JsonModel> photoList = [];

  Future<List> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/photos/photo.json');
    List photo = jsonDecode(json);
    return photo;
  }

  Future<void> fromList() async {
    List photo = await jsonParsing();
    photoList = photo.map((e) => JsonModel.fromMap(e)).toList();
    notifyListeners();
  }

  JsonProvider() {
    fromList();
  }
}
