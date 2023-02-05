import 'dart:convert';

import 'package:ev_studios/core/services/t_service.dart';
import 'package:ev_studios/modules/news_article/model/api_response_model.dart';
import 'package:get/get.dart';

class NewsArticleController extends GetxController {
  bool isLoading = false;
  toggleLoading() {
    isLoading = !isLoading;
    update();
  }

  final api = "https://api.sampleapis.com/futurama/characters";
  TService tService = TService();
  RxList<NewsArticle> newsArticle = <NewsArticle>[].obs;
  @override
  void onInit() async {
    toggleLoading();
    await getNewsArticle();
    toggleLoading();
    super.onInit();
  }

  getNewsArticle() async {
    var response = await tService.httpGet(api);
    final decodedData = jsonDecode(response.body);

    if (response != null) {
      addResponseToList(decodedData as List<dynamic>);
    }
  }

  addResponseToList(List<dynamic> data) {
    for (var item in data) {
      newsArticle.add(NewsArticle.fromMap(item));
    }
  }
}
