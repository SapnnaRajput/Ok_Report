import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLoginController extends GetxController {
  late TabController tabController;
  var selectedIndex = 0.obs;

  void initTabController(TickerProvider tickerProvider) {
    tabController = TabController(length: 2, vsync: tickerProvider);
    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        selectedIndex.value = tabController.index;
      }
    });
  }

  void changeTab(int index) {
    selectedIndex.value = index;
    tabController.animateTo(index);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
