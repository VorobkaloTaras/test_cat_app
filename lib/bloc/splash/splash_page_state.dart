part of 'splash_page_bloc.dart';

@freezed
abstract class SplashPageState  with _$SplashPageState{
  const SplashPageState._();

  const factory SplashPageState({
    bool isLogged,
  }) = _SplashPageState;

}