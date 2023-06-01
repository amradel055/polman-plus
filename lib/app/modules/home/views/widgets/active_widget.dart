
import 'package:easy_hotel/app/core/utils/common.dart';
import 'package:easy_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:easy_hotel/app/modules/home/views/widgets/order_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../../components/app_refresh_indecetor.dart';


class ActiveOrdersWidget extends GetView<HomeController> {
  const ActiveOrdersWidget({Key? key})
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
            onRefresh: () async => await controller.getActiveOrders(),
            child: Obx(() {
              return Column(
                children: [
                  for(int i = 0; i < controller.activeOrders.length; i ++)
                    OrderContainer(
                        true,
                        controller.activeOrders[i].roomNum.toString() ,
                        controller.activeOrders[i].remark ?? "No Remarks",
                        DateFormat('yyyy.MM.dd  hh:mm aaa').format(
                            controller.activeOrders[i].dueDate!
                        ) ??"",
                        i),
                ],
              );
            }),
          )
      );
    });
  }

}

