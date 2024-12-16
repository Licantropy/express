// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationDtoImpl _$$RegistrationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationDtoImpl(
      message: json['message'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      tokenPair:
          TokenPairDto.fromJson(json['tokenPair'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegistrationDtoImplToJson(
        _$RegistrationDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'tokenPair': instance.tokenPair,
    };
