part of 'splash_page_bloc.dart';

@freezed
abstract class SplashPageEvent with _$SplashPageEvent {
  const factory SplashPageEvent.noEvent() = NoEvent;
}