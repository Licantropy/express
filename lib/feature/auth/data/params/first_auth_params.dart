import 'package:express/common/utils/params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_auth_params.freezed.dart';

///
@unfreezed
class FirstAuthParams with Params, _$FirstAuthParams {
  ///
  factory FirstAuthParams({
    required String phone,
  }) = _FirstAuthParams;

  FirstAuthParams._();

  @override

  ///
  Map<String, dynamic> toData() => {
        'phone': phone,
      };
}
