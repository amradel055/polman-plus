// To parse this JSON data, do


//
// To parse this JSON data, do
//
//     final polmanOrder = polmanOrderFromJson(jsonString);

import 'dart:convert';

PolmanOrder? polmanOrderFromJson(String str) => PolmanOrder.fromJson(json.decode(str));

String polmanOrderToJson(PolmanOrder? data) => json.encode(data!.toJson());

class PolmanOrder {
  PolmanOrder({
    this.id,
    this.markEdit,
    this.msg,
    this.msgType,
    this.markDisable,
    this.createdBy,
    this.createdDate,
    this.index,
    this.companyId,
    this.createdByName,
    this.branchId,
    this.deletedBy,
    this.deletedDate,
    this.igmaOwnerId,
    this.companyCode,
    this.branchSerial,
    this.igmaOwnerSerial,
    this.userCode,
    this.customerId,
    this.customerName,
    this.dueDate,
    this.finishBy,
    this.finishName,
    this.startDate,
    this.finishDate,
    this.remark,
    this.roomNum,
  });

  int? id;
  bool? markEdit;
  dynamic msg;
  dynamic msgType;
  dynamic markDisable;
  int? createdBy;
  String? createdDate;
  int? index;
  dynamic companyId;
  dynamic createdByName;
  dynamic branchId;
  dynamic deletedBy;
  dynamic deletedDate;
  dynamic igmaOwnerId;
  dynamic companyCode;
  dynamic branchSerial;
  dynamic igmaOwnerSerial;
  dynamic userCode;
  int? customerId;
  String? customerName;
  DateTime? dueDate;
  int? finishBy;
  String? finishName;
  String? startDate;
  String? finishDate;
  String? remark;
  int? roomNum;

  static List<PolmanOrder> fromList(dynamic json) => List.from(json.map((e) => PolmanOrder.fromJson(e)));


  factory PolmanOrder.fromJson(Map<String, dynamic> json) => PolmanOrder(
    id: json["id"],
    markEdit: json["markEdit"],
    msg: json["msg"],
    msgType: json["msgType"],
    markDisable: json["markDisable"],
    createdBy: json["createdBy"],
    createdDate: json["createdDate"],
    index: json["index"],
    companyId: json["companyId"],
    createdByName: json["createdByName"],
    branchId: json["branchId"],
    deletedBy: json["deletedBy"],
    deletedDate: json["deletedDate"],
    igmaOwnerId: json["igmaOwnerId"],
    companyCode: json["companyCode"],
    branchSerial: json["branchSerial"],
    igmaOwnerSerial: json["igmaOwnerSerial"],
    userCode: json["userCode"],
    customerId: json["customerId"],
    customerName: json["customerName"],
    dueDate: json["dueDate"] == null ? null : DateTime.parse(json["dueDate"]),
    finishBy: json["finishBy"],
    finishName: json["finishName"],
    startDate: json["startDate"],
    finishDate: json["finishDate"],
    remark: json["remark"],
    roomNum: json["roomNum"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "markEdit": markEdit,
    "msg": msg,
    "msgType": msgType,
    "markDisable": markDisable,
    "createdBy": createdBy,
    "createdDate": createdDate,
    "index": index,
    "companyId": companyId,
    "createdByName": createdByName,
    "branchId": branchId,
    "deletedBy": deletedBy,
    "deletedDate": deletedDate,
    "igmaOwnerId": igmaOwnerId,
    "companyCode": companyCode,
    "branchSerial": branchSerial,
    "igmaOwnerSerial": igmaOwnerSerial,
    "userCode": userCode,
    "customerId": customerId,
    "customerName": customerName,
    "dueDate": dueDate == null ? null : dueDate!.toIso8601String(),
    "finishBy": finishBy,
    "finishName": finishName,
    "startDate": startDate,
    "finishDate": finishDate,
    "remark": remark,
    "roomNum": roomNum,
  };
}

