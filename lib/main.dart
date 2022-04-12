import 'package:flutter/material.dart';
import 'package:tugas_pertemuan3_ramdan/pages/ProfilePages.dart';
import 'package:tugas_pertemuan3_ramdan/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muhammad Ramdan',
      theme: ThemeData(
        fontFamily: "Lato",
        textTheme: TEXT_THEME_DEFAULT
      ),
      home: ProfilePages(),
    );
  }
}
