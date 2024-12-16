import 'package:express/common/utils/params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_params.freezed.dart';

///
@unfreezed
class OtpParams with Params, _$OtpParams {
  ///
  factory OtpParams({
    required String code,
    required String phone,
  }) = _OtpParams;

  OtpParams._();

  @override

  ///
  Map<String, dynamic> toData() => {
        'code': code,
        'phone': phone,
      };
}
