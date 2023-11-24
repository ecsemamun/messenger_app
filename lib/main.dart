import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

import 'LoginPage.dart';

void main() {
  ZIMKit().init(
    appID: 1939745878,
    appSign: 'e188368ec8566f5649a758d51a3d7b48bc81a9a3c6fc3150b664b0e9c5979722',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}




// https://www.youtube.com/watch?v=aR6q2B1e-RU