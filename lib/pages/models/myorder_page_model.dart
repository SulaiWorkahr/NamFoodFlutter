// To parse this JSON data, do
//
//     final driverListData = driverListDataFromJson(jsonString);

import 'dart:convert';

MyOrderPage myorderpageFromJson(String str) =>
    MyOrderPage.fromJson(json.decode(str));

String myorderpageToJson(MyOrderPage data) => json.encode(data.toJson());

class MyOrderPage {
  String status;
  List<MyOrders> list;
  String code;
  String message;

  MyOrderPage({
    required this.status,
    required this.list,
    required this.code,
    required this.message,
  });

  factory MyOrderPage.fromJson(Map<String, dynamic> json) => MyOrderPage(
        status: json["status"],
        list:
            List<MyOrders>.from(json["list"].map((x) => MyOrders.fromJson(x))),
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
        "code": code,
        "message": message,
      };
}

class MyOrders {
  int id;
  String? orderid;
  String? items;
  String? orderstatus;
  String? OrderPlacedDate;
  String? OrderConfirmedDate;
  String? DeliveryDate;

  int status;
  int active;
  int createdBy;
  DateTime createdDate;
  int? updatedBy;
  DateTime? updatedDate;
  int userId;
  int vehicleId;
  String licenseNumber;
  DateTime licenseExpiry;
  String address;

  MyOrders({
    required this.id,
    this.orderid,
    this.items,
    this.orderstatus,
    this.OrderPlacedDate,
    this.OrderConfirmedDate,
    this.DeliveryDate,
    required this.status,
    required this.active,
    required this.createdBy,
    required this.createdDate,
    this.updatedBy,
    this.updatedDate,
    required this.userId,
    required this.vehicleId,
    required this.licenseNumber,
    required this.licenseExpiry,
    required this.address,
  });

  factory MyOrders.fromJson(Map<String, dynamic> json) => MyOrders(
        id: json["id"],
        orderid: json["orderid"],
        items: json["items"],
        orderstatus: json["orderstatus"],
        OrderPlacedDate: json["OrderPlacedDate"],
        OrderConfirmedDate: json["OrderConfirmedDate"],
        DeliveryDate: json["DeliveryDate"],
        status: json["status"],
        active: json["active"],
        createdBy: json["created_by"],
        createdDate: DateTime.parse(json["created_date"]),
        updatedBy: json["updated_by"],
        updatedDate: json["updated_date"] == null
            ? null
            : DateTime.parse(json["updated_date"]),
        userId: json["user_id"],
        vehicleId: json["vehicle_id"],
        licenseNumber: json["license_number"],
        licenseExpiry: DateTime.parse(json["license_expiry"]),
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "orderid": orderid,
        "items": items,
        "orderstatus": orderstatus,
        "OrderPlacedDate": OrderPlacedDate,
        "OrderConfirmedDate": OrderConfirmedDate,
        "DeliveryDate": DeliveryDate,
        "status": status,
        "active": active,
        "created_by": createdBy,
        "created_date": createdDate.toIso8601String(),
        "updated_by": updatedBy,
        "updated_date": updatedDate?.toIso8601String(),
        "user_id": userId,
        "vehicle_id": vehicleId,
        "license_number": licenseNumber,
        "license_expiry":
            "${licenseExpiry.year.toString().padLeft(4, '0')}-${licenseExpiry.month.toString().padLeft(2, '0')}-${licenseExpiry.day.toString().padLeft(2, '0')}",
        "address": address,
      };
}