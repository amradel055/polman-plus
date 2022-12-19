
import 'package:easy_hotel/app/modules/hotels_search/controller/hotel_search_controller.dart';
import 'package:easy_hotel/app/modules/hotels_search/views/hotel_search_home_view.dart';
import 'package:easy_hotel/app/modules/my_account/controllers/my_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../my_account/views/my_account_view.dart';
import '../../rooms/rooms_homepage/views/rooms_view.dart';

class HomeController extends GetxController {

  final pageIndex = 0.obs;
  List<Widget> pages = const[
    RoomsView(),
    MyAccountView(),
    HotelSearchView()
  ];
  @override
  void onInit() {
    Get.isRegistered<HotelSearchController>() ? Get.find<HotelSearchController>() : Get.put(HotelSearchController());
    Get.isRegistered<MyAccountController>() ? Get.find<MyAccountController>() : Get.put(MyAccountController());
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeView(int index) => pageIndex.value = index;
}
