import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../components/app_refresh_indecetor.dart';


class DeliveredOrdersWidget extends GetView<HomeController> {
  const DeliveredOrdersWidget({Key? key})
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

        return SizedBox(
            width: size.width,
            child: AppRefreshIndicator(
              onRefresh: () async => await controller.getDeliveredOrders(),
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.deliverdOrders.length,
                  padding: const EdgeInsets.all(4),
                  dragStartBehavior: DragStartBehavior.start,
                  itemBuilder: (context, i) {
                    final order = controller.deliverdOrders[i];
                    return OrderContainer(
                        true,
                        order.roomNum.toString(),
                        order.remark ?? "No Remarks",
                        DateFormat('yyyy.MM.dd  hh:mm aaa')
                            .format(order.dueDate!) ??
                            "",
                        i);
                  },
                );
              }),
            ));

    });
  }

}

