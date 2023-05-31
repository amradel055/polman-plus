import 'package:easy_hotel/app/data/model/auth/login/dto/request/login_request.dart';
import 'package:easy_hotel/app/data/model/auth/login/dto/response/login_response.dart';

import 'package:easy_hotel/app/data/model/base_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/active_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/delayed_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_finish_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_orders_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/request/deliver_request.dart';
import 'package:easy_hotel/app/data/model/delivery/homePage/dto/response/order_response.dart';
import 'package:easy_hotel/app/data/provider/api_provider.dart';

class DeliveryRepository {


  getActiveOrders(
      ActiveOrdersRequestDto activeOrdersRequestDto, {
        Function()? onComplete,
        SuccessFunc<List<PolmanOrder>> onSuccess,
        Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<PolmanOrder>>('bollman/allBollmanFinishAndStartIsNull',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: activeOrdersRequestDto.toJson(),
        onError: onError,
        convertor: PolmanOrder.fromList,
      );

  getDeliveredOrders(
      DeliverOrdersRequestDto deliverOrdersRequestDto, {
        Function()? onComplete,
        SuccessFunc<List<PolmanOrder>> onSuccess,
        Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<PolmanOrder>>('bollman/allBollmanFinishIsNull',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: deliverOrdersRequestDto.toJson(),
        onError: onError,
        convertor: PolmanOrder.fromList,
      );

  getAllOrders(
      ActiveOrdersRequestDto activeOrdersRequestDto, {
        Function()? onComplete,
        SuccessFunc<List<PolmanOrder>> onSuccess,
        Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<PolmanOrder>>('bollman/allBollmanOrder',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: activeOrdersRequestDto.toJson(),
        onError: onError,
        convertor: PolmanOrder.fromList,
      );
  getDelayedOrders(
      DelayOrdersRequestDto delayOrdersRequestDto, {
        Function()? onComplete,
        SuccessFunc<List<PolmanOrder>> onSuccess,
        Function(dynamic error)? onError,
      }) =>
      ApiProvider().post<List<PolmanOrder>>('bollman/allBollmanFinishIsNotNull',
        onComplete: onComplete,
        onSuccess: onSuccess,
        data: delayOrdersRequestDto.toJson(),
        onError: onError,
        convertor: PolmanOrder.fromList,
      );
  getdeliver(
      DeliverRequestDto deliverRequestDto, {
        SuccessFunc<void> onSuccess,
        Function(dynamic error)? onError,  Function()?onComplete,
      }) {
    ApiProvider().post<void>(
        'bollman/updateBoolmanIdAndDate',
        onSuccess: onSuccess,
        data: deliverRequestDto.toJson(),
        onError: onError,
        convertor: (_){return null;},
        onComplete: onComplete
    );
  }
  getFinishdeliver(
      DeliverFinishRequestDto deliverFinishRequestDto, {
        SuccessFunc<void> onSuccess,
        Function(dynamic error)? onError,  Function()?onComplete,
      }) {
    ApiProvider().post<void>(
        'bollman/updateFinishDate',
        onSuccess: onSuccess,
        data: deliverFinishRequestDto.toJson(),
        onError: onError,
        convertor: (_){return null;},
        onComplete: onComplete
    );
  }

}
