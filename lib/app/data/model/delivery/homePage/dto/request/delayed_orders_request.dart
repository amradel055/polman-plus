import 'package:easy_hotel/app/data/model/base_request.dart';

class ActiveOrdersRequestDto extends BaseRequest {
  ActiveOrdersRequestDto({
    this.branchId,
    this.deliveryInfId,
  });

  int? branchId;
  int? deliveryInfId;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
    "deliveryInfId": deliveryInfId,
  };
}
