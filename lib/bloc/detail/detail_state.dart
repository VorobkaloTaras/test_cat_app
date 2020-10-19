part of 'detail_bloc.dart';

@freezed
abstract class DetailState with _$DetailState {
  const factory DetailState({
    @Default(false) bool isFavorite,
  }) = _DetailState;

  factory DetailState.initial(bool isFavorite) {
    return DetailState(
      isFavorite: isFavorite,
    );
  }
}
