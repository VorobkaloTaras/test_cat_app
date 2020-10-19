// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashPageEventTearOff {
  const _$SplashPageEventTearOff();

// ignore: unused_element
  NoEvent noEvent() {
    return const NoEvent();
  }
}

// ignore: unused_element
const $SplashPageEvent = _$SplashPageEventTearOff();

mixin _$SplashPageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noEvent(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noEvent(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noEvent(NoEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noEvent(NoEvent value),
    @required Result orElse(),
  });
}

abstract class $SplashPageEventCopyWith<$Res> {
  factory $SplashPageEventCopyWith(
          SplashPageEvent value, $Res Function(SplashPageEvent) then) =
      _$SplashPageEventCopyWithImpl<$Res>;
}

class _$SplashPageEventCopyWithImpl<$Res>
    implements $SplashPageEventCopyWith<$Res> {
  _$SplashPageEventCopyWithImpl(this._value, this._then);

  final SplashPageEvent _value;
  // ignore: unused_field
  final $Res Function(SplashPageEvent) _then;
}

abstract class $NoEventCopyWith<$Res> {
  factory $NoEventCopyWith(NoEvent value, $Res Function(NoEvent) then) =
      _$NoEventCopyWithImpl<$Res>;
}

class _$NoEventCopyWithImpl<$Res> extends _$SplashPageEventCopyWithImpl<$Res>
    implements $NoEventCopyWith<$Res> {
  _$NoEventCopyWithImpl(NoEvent _value, $Res Function(NoEvent) _then)
      : super(_value, (v) => _then(v as NoEvent));

  @override
  NoEvent get _value => super._value as NoEvent;
}

class _$NoEvent implements NoEvent {
  const _$NoEvent();

  @override
  String toString() {
    return 'SplashPageEvent.noEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noEvent(),
  }) {
    assert(noEvent != null);
    return noEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noEvent != null) {
      return noEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noEvent(NoEvent value),
  }) {
    assert(noEvent != null);
    return noEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noEvent(NoEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noEvent != null) {
      return noEvent(this);
    }
    return orElse();
  }
}

abstract class NoEvent implements SplashPageEvent {
  const factory NoEvent() = _$NoEvent;
}

class _$SplashPageStateTearOff {
  const _$SplashPageStateTearOff();

// ignore: unused_element
  _SplashPageState call({bool isLogged}) {
    return _SplashPageState(
      isLogged: isLogged,
    );
  }
}

// ignore: unused_element
const $SplashPageState = _$SplashPageStateTearOff();

mixin _$SplashPageState {
  bool get isLogged;

  $SplashPageStateCopyWith<SplashPageState> get copyWith;
}

abstract class $SplashPageStateCopyWith<$Res> {
  factory $SplashPageStateCopyWith(
          SplashPageState value, $Res Function(SplashPageState) then) =
      _$SplashPageStateCopyWithImpl<$Res>;
  $Res call({bool isLogged});
}

class _$SplashPageStateCopyWithImpl<$Res>
    implements $SplashPageStateCopyWith<$Res> {
  _$SplashPageStateCopyWithImpl(this._value, this._then);

  final SplashPageState _value;
  // ignore: unused_field
  final $Res Function(SplashPageState) _then;

  @override
  $Res call({
    Object isLogged = freezed,
  }) {
    return _then(_value.copyWith(
      isLogged: isLogged == freezed ? _value.isLogged : isLogged as bool,
    ));
  }
}

abstract class _$SplashPageStateCopyWith<$Res>
    implements $SplashPageStateCopyWith<$Res> {
  factory _$SplashPageStateCopyWith(
          _SplashPageState value, $Res Function(_SplashPageState) then) =
      __$SplashPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLogged});
}

class __$SplashPageStateCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res>
    implements _$SplashPageStateCopyWith<$Res> {
  __$SplashPageStateCopyWithImpl(
      _SplashPageState _value, $Res Function(_SplashPageState) _then)
      : super(_value, (v) => _then(v as _SplashPageState));

  @override
  _SplashPageState get _value => super._value as _SplashPageState;

  @override
  $Res call({
    Object isLogged = freezed,
  }) {
    return _then(_SplashPageState(
      isLogged: isLogged == freezed ? _value.isLogged : isLogged as bool,
    ));
  }
}

class _$_SplashPageState extends _SplashPageState {
  const _$_SplashPageState({this.isLogged}) : super._();

  @override
  final bool isLogged;

  @override
  String toString() {
    return 'SplashPageState(isLogged: $isLogged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashPageState &&
            (identical(other.isLogged, isLogged) ||
                const DeepCollectionEquality()
                    .equals(other.isLogged, isLogged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLogged);

  @override
  _$SplashPageStateCopyWith<_SplashPageState> get copyWith =>
      __$SplashPageStateCopyWithImpl<_SplashPageState>(this, _$identity);
}

abstract class _SplashPageState extends SplashPageState {
  const _SplashPageState._() : super._();
  const factory _SplashPageState({bool isLogged}) = _$_SplashPageState;

  @override
  bool get isLogged;
  @override
  _$SplashPageStateCopyWith<_SplashPageState> get copyWith;
}
