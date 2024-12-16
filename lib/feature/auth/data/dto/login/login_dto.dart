import 'package:express/feature/auth/data/dto/token_pair/token_pair_dto.dart';
import 'package:express/feature/auth/data/dto/user/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';

part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required UserDto user,
    required TokenPairDto tokenPair,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson({
        ...json,
        'tokenPair': {
          'token': json['token'],
          'refresh_token': json['refresh_token'],
        }
      });
}
