import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/news_article_controller.dart';
import 'single_news_article.dart';

class NewsArticleView extends StatelessWidget {
  const NewsArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NewsArticleController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latest News'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GetBuilder<NewsArticleController>(builder: (controller) {
        return controller.isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.newsArticle.length,
                    itemBuilder: (context, index) {
                      final item = controller.newsArticle[index];
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                            onTap: () {
                              Get.to(SingleArticleView(article: item));
                            },
                            minVerticalPadding: 10,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.grey.shade300, width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            subtitle:
                                Text('${item.name.first} ${item.name.last}'),
                            title: Text(
                              item.sayings[0],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: const SizedBox(
                              height: 50,
                              child: Icon(Icons.arrow_forward_ios, size: 15),
                            ),
                            leading: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(item.images.main),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            )),
                      );
                    },
                  ),
                ),
              );
      }),
    );
  }
}
