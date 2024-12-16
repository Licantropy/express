import 'package:express/feature/auth/data/dto/token_pair/token_pair_dto.dart';
import 'package:express/feature/auth/data/dto/user/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_dto.freezed.dart';

part 'registration_dto.g.dart';

@freezed
class RegistrationDto with _$RegistrationDto {
  const factory RegistrationDto({
    required String message,
    required UserDto user,
    required TokenPairDto tokenPair,
  }) = _RegistrationDto;

  factory RegistrationDto.fromJson(Map<String, dynamic> json) => _$RegistrationDtoFromJson({
        ...json,
        'tokenPair': {
          'token': json['token'],
          'refresh_token': json['refresh_token'],
        }
      });
}
