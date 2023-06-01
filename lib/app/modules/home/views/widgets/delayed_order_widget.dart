import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/themes/app_text_theme.dart';
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_strings.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:easy_hotel/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

import '../../../../components/app_refresh_indecetor.dart';


class DelayedOrdersWidget extends GetView<HomeController> {
  const DelayedOrdersWidget({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: Common.getSpin(),
        );
      }
      return AppRefreshIndicator(
        onRefresh: () async => await controller.getDelyedOrders(),
        child: Obx(() {
          return Column(
            children: [
              for(int i = 0; i < controller.delayedOrders.length; i ++)
                OrderContainer(
                    false,
                    controller.delayedOrders[i].roomNum.toString() ?? "",
                    controller.delayedOrders[i].remark ?? "No Remarks",
                    DateFormat('yyyy.MM.dd  hh:mm aaa').format(
                        controller.delayedOrders[i].dueDate!
                    ) ??"",
                    i),

            ],
          );
        }),
      );
    });
  }

}

