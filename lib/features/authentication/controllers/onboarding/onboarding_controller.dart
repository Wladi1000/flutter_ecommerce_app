import 'package:flutter/material.dart';

class OnBoardingController{
  // Singleton instance
  static final OnBoardingController _instance = OnBoardingController._internal();

  // Private constructor
  OnBoardingController._internal();

  // Factory constructor
  factory OnBoardingController() {
    return _instance;
  }

  // Variables
  final pageController = PageController();
  ValueNotifier<int> currentPageIndex = ValueNotifier<int>(0);
  
  // Update Current Index when Page Scroll 
  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  // Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    pageController.jumpToPage(index);
    updatePageIndicator(index);
  }

  // Update Current Index & jump to next page
  void nextPage(BuildContext context) {
    int nextPageIndex = currentPageIndex.value + 1;
    if (nextPageIndex >= 3) {
      // Navigate to login page
      // Navigator.pushReplacementNamed(context, '/login');
    } else {
      pageController.animateToPage(
        nextPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      updatePageIndicator(nextPageIndex);
    }
  }

  // Update Current Index & jump to the last Page
  void skipPage() {
    int lastPageIndex = 2; // Assuming there are 3 pages (index 0, 1, 2)
    pageController.jumpToPage(lastPageIndex);
    updatePageIndicator(lastPageIndex);
  }
}