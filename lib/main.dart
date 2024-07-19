import 'package:flutter/material.dart';
import 'package:json_data/Screen/JSON%20Parsing/Provider/photoJsonProvider.dart';
import 'package:json_data/Screen/JSON%20Parsing/View/showData.dart';
import 'package:json_data/Screen/UserData/Provider/userJsonProvider.dart';
import 'package:provider/provider.dart';

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
        ChangeNotifierProvider(
          create: (context) => UserJsonProvider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const ShowUserData(),
      ),
    );
  }
}

