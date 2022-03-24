import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:julianaehrlich/screen/home/home_link_jehr_screen.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link Juliana Ehrlich',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeLinkJerhSreen(),
    );
  }
}
