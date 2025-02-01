import 'package:flutter/material.dart';

class HomeController {
  ValueNotifier<int> carrouselCurrentIndex = ValueNotifier<int>(0);

  void updatePageIndicator(int index) {
    carrouselCurrentIndex.value = index;
  }
}

HomeController homeController = HomeController();