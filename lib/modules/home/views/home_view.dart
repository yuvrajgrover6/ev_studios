import 'package:ev_studios/modules/animation/view/water_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../news_article/views/news_article_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            Expanded(
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.grey),
                ),
                elevation: 0,
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () {
                    Get.to(const NewsArticleView());
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.article,
                            size: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Read News Articles",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.grey),
                ),
                elevation: 0,
                child: InkWell(
                  splashColor: Colors.grey,
                  onTap: () {
                    Get.to(AnimationFlow());
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.animation,
                            size: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Animation Screen",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
