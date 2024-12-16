import 'package:express/feature/auth/data/dto/token_pair/token_pair_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_pair_model.freezed.dart';

@freezed
class TokenPairModel with _$TokenPairModel {
  factory TokenPairModel({
    required String accessToken,
    required String refreshToken,
  }) = _TokenPairModel;

  TokenPairModel._();

  factory TokenPairModel.fromDto(TokenPairDto dto) => TokenPairModel(
        accessToken: dto.accessToken,
        refreshToken: dto.refreshToken,
      );
}
