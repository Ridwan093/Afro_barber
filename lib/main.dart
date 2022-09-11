import 'package:flutter/material.dart';

import 'getstartpage/Getstart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afro Barber',
      theme: ThemeData.dark(),
      home: const Getstartp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
