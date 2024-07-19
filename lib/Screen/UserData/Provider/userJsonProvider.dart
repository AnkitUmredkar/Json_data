import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Model/userModelData.dart';

class UserJsonProvider extends ChangeNotifier {

  List<UserModelData> userList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/users/user.json');
    List user = jsonDecode(json);
    userList = user.map((e) => UserModelData.fromJson(e)).toList();
    notifyListeners();
  }

  UserJsonProvider() {
    jsonParsing();
  }
}
