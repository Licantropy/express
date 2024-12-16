import 'package:express/common/utils/params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';

///
@unfreezed
class LoginParams with Params, _$LoginParams {
  ///
  factory LoginParams({
    required String phone,
    required String password,
  }) = _LoginParams;

  LoginParams._();

  @override

  ///
  Map<String, dynamic> toData() => {
        'phone': phone,
        'password': password,
      };
}
