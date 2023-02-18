import 'package:easy_hotel/app/data/model/base_request.dart';

class LoginRequestDto extends BaseRequest {
  LoginRequestDto({
    this.userName,
    this.password,
  });

  String? userName;
  String? password;

  @override
  Map<String, dynamic> toJson() => {
    "userName": userName,
    "password": password,
  };
}
