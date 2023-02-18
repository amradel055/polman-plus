import 'package:easy_hotel/app/data/model/base_request.dart';

class DeliverOrdersRequestDto extends BaseRequest {
  DeliverOrdersRequestDto({
    this.branchId,
    this.deliverBy,
  });

  int? branchId;
  int? deliverBy;

  @override
  Map<String, dynamic> toJson() => {
    "branchId": branchId,
    "deliveryInfId": deliverBy,
  };
}
