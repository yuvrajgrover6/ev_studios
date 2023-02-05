import 'package:ev_studios/modules/news_article/views/news_article_view.dart';
import 'package:ev_studios/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internship Assignment',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomeView(),
    );
  }
}
