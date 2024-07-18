import 'package:flutter/material.dart';
import 'package:json_data/Screen/JSON%20Parsing/Provider/jsonProvider.dart';
import 'package:json_data/Screen/JSON%20Parsing/View/showData.dart';
import 'package:provider/provider.dart';

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
          create: (context) => JsonProvider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const ShowData(),
      ),
    );
  }
}

// hello
