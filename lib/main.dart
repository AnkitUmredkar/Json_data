import 'package:flutter/material.dart';
import 'package:json_data/Screen/JSON%20Parsing/Provider/photoJsonProvider.dart';
import 'package:json_data/Screen/JSON%20Parsing/View/showData.dart';
import 'package:json_data/Screen/PostData/Model/postModelClass.dart';
import 'package:json_data/Screen/PostData/Provider/postJsonProvider.dart';
import 'package:json_data/Screen/UserData/Provider/userJsonProvider.dart';
import 'package:provider/provider.dart';
import 'Screen/PostData/View/showPostData.dart';
import 'Screen/UserData/View/showUserData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PostJsonProvider(),)
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const ShowPostData(),
      ),
    );
  }
}