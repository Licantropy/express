import 'package:express/common/utils/params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_params.freezed.dart';

///
@unfreezed
class RegistrationParams with Params, _$RegistrationParams {
  ///
  factory RegistrationParams({
    required String phone,
    required String password,
    required String passwordConfirmation,
    required String name,
    required String preferLanguage,
    required String code,
  }) = _RegistrationParams;

  RegistrationParams._();

  @override

  ///
  Map<String, dynamic> toData() => {
        'phone': phone,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'name': name,
        'prefer_lang': preferLanguage,
        'code': code,
      };
}
