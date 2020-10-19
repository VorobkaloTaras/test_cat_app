// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DetailEventTearOff {
  const _$DetailEventTearOff();

// ignore: unused_element
  Initial initial(Cat cat) {
    return Initial(
      cat,
    );
  }

// ignore: unused_element
  FavoriteClicked favoriteClicked(bool isFavorite) {
    return FavoriteClicked(
      isFavorite,
    );
  }
}

// ignore: unused_element
const $DetailEvent = _$DetailEventTearOff();

mixin _$DetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Cat cat),
    @required Result favoriteClicked(bool isFavorite),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Cat cat),
    Result favoriteClicked(bool isFavorite),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result favoriteClicked(FavoriteClicked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result favoriteClicked(FavoriteClicked value),
    @required Result orElse(),
  });
}

abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res>;
}

class _$DetailEventCopyWithImpl<$Res> implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  final DetailEvent _value;
  // ignore: unused_field
  final $Res Function(DetailEvent) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({Cat cat});
}

class _$InitialCopyWithImpl<$Res> extends _$DetailEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object cat = freezed,
  }) {
    return _then(Initial(
      cat == freezed ? _value.cat : cat as Cat,
    ));
  }
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial(this.cat) : assert(cat != null);

  @override
  final Cat cat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailEvent.initial(cat: $cat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailEvent.initial'))
      ..add(DiagnosticsProperty('cat', cat));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.cat, cat) ||
                const DeepCollectionEquality().equals(other.cat, cat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cat);

  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Cat cat),
    @required Result favoriteClicked(bool isFavorite),
  }) {
    assert(initial != null);
    assert(favoriteClicked != null);
    return initial(cat);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Cat cat),
    Result favoriteClicked(bool isFavorite),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(cat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result favoriteClicked(FavoriteClicked value),
  }) {
    assert(initial != null);
    assert(favoriteClicked != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result favoriteClicked(FavoriteClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DetailEvent {
  const factory Initial(Cat cat) = _$Initial;

  Cat get cat;
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $FavoriteClickedCopyWith<$Res> {
  factory $FavoriteClickedCopyWith(
          FavoriteClicked value, $Res Function(FavoriteClicked) then) =
      _$FavoriteClickedCopyWithImpl<$Res>;
  $Res call({bool isFavorite});
}

class _$FavoriteClickedCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res>
    implements $FavoriteClickedCopyWith<$Res> {
  _$FavoriteClickedCopyWithImpl(
      FavoriteClicked _value, $Res Function(FavoriteClicked) _then)
      : super(_value, (v) => _then(v as FavoriteClicked));

  @override
  FavoriteClicked get _value => super._value as FavoriteClicked;

  @override
  $Res call({
    Object isFavorite = freezed,
  }) {
    return _then(FavoriteClicked(
      isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

class _$FavoriteClicked
    with DiagnosticableTreeMixin
    implements FavoriteClicked {
  const _$FavoriteClicked(this.isFavorite) : assert(isFavorite != null);

  @override
  final bool isFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailEvent.favoriteClicked(isFavorite: $isFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailEvent.favoriteClicked'))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoriteClicked &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFavorite);

  @override
  $FavoriteClickedCopyWith<FavoriteClicked> get copyWith =>
      _$FavoriteClickedCopyWithImpl<FavoriteClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Cat cat),
    @required Result favoriteClicked(bool isFavorite),
  }) {
    assert(initial != null);
    assert(favoriteClicked != null);
    return favoriteClicked(isFavorite);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Cat cat),
    Result favoriteClicked(bool isFavorite),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteClicked != null) {
      return favoriteClicked(isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result favoriteClicked(FavoriteClicked value),
  }) {
    assert(initial != null);
    assert(favoriteClicked != null);
    return favoriteClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result favoriteClicked(FavoriteClicked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteClicked != null) {
      return favoriteClicked(this);
    }
    return orElse();
  }
}

abstract class FavoriteClicked implements DetailEvent {
  const factory FavoriteClicked(bool isFavorite) = _$FavoriteClicked;

  bool get isFavorite;
  $FavoriteClickedCopyWith<FavoriteClicked> get copyWith;
}

class _$DetailStateTearOff {
  const _$DetailStateTearOff();

// ignore: unused_element
  _DetailState call({bool isFavorite = false}) {
    return _DetailState(
      isFavorite: isFavorite,
    );
  }
}

// ignore: unused_element
const $DetailState = _$DetailStateTearOff();

mixin _$DetailState {
  bool get isFavorite;

  $DetailStateCopyWith<DetailState> get copyWith;
}

abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res>;
  $Res call({bool isFavorite});
}

class _$DetailStateCopyWithImpl<$Res> implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  final DetailState _value;
  // ignore: unused_field
  final $Res Function(DetailState) _then;

  @override
  $Res call({
    Object isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

abstract class _$DetailStateCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$DetailStateCopyWith(
          _DetailState value, $Res Function(_DetailState) then) =
      __$DetailStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isFavorite});
}

class __$DetailStateCopyWithImpl<$Res> extends _$DetailStateCopyWithImpl<$Res>
    implements _$DetailStateCopyWith<$Res> {
  __$DetailStateCopyWithImpl(
      _DetailState _value, $Res Function(_DetailState) _then)
      : super(_value, (v) => _then(v as _DetailState));

  @override
  _DetailState get _value => super._value as _DetailState;

  @override
  $Res call({
    Object isFavorite = freezed,
  }) {
    return _then(_DetailState(
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

class _$_DetailState with DiagnosticableTreeMixin implements _DetailState {
  const _$_DetailState({this.isFavorite = false}) : assert(isFavorite != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailState(isFavorite: $isFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailState'))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailState &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFavorite);

  @override
  _$DetailStateCopyWith<_DetailState> get copyWith =>
      __$DetailStateCopyWithImpl<_DetailState>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState({bool isFavorite}) = _$_DetailState;

  @override
  bool get isFavorite;
  @override
  _$DetailStateCopyWith<_DetailState> get copyWith;
}
