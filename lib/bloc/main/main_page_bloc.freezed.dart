// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'main_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MainPageEventTearOff {
  const _$MainPageEventTearOff();

// ignore: unused_element
  GetCats getCats() {
    return const GetCats();
  }

// ignore: unused_element
  GetFacts getFacts() {
    return const GetFacts();
  }

// ignore: unused_element
  MarkAsFavorite markAsFavorite(int index, Cat cat, bool isChecked) {
    return MarkAsFavorite(
      index,
      cat,
      isChecked,
    );
  }

// ignore: unused_element
  UpdateFavorite updateFavorite(int index, Cat cat, bool isChecked) {
    return UpdateFavorite(
      index,
      cat,
      isChecked,
    );
  }
}

// ignore: unused_element
const $MainPageEvent = _$MainPageEventTearOff();

mixin _$MainPageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCats(),
    @required Result getFacts(),
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
    @required Result updateFavorite(int index, Cat cat, bool isChecked),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result getFacts(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
    Result updateFavorite(int index, Cat cat, bool isChecked),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCats(GetCats value),
    @required Result getFacts(GetFacts value),
    @required Result markAsFavorite(MarkAsFavorite value),
    @required Result updateFavorite(UpdateFavorite value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result getFacts(GetFacts value),
    Result markAsFavorite(MarkAsFavorite value),
    Result updateFavorite(UpdateFavorite value),
    @required Result orElse(),
  });
}

abstract class $MainPageEventCopyWith<$Res> {
  factory $MainPageEventCopyWith(
          MainPageEvent value, $Res Function(MainPageEvent) then) =
      _$MainPageEventCopyWithImpl<$Res>;
}

class _$MainPageEventCopyWithImpl<$Res>
    implements $MainPageEventCopyWith<$Res> {
  _$MainPageEventCopyWithImpl(this._value, this._then);

  final MainPageEvent _value;
  // ignore: unused_field
  final $Res Function(MainPageEvent) _then;
}

abstract class $GetCatsCopyWith<$Res> {
  factory $GetCatsCopyWith(GetCats value, $Res Function(GetCats) then) =
      _$GetCatsCopyWithImpl<$Res>;
}

class _$GetCatsCopyWithImpl<$Res> extends _$MainPageEventCopyWithImpl<$Res>
    implements $GetCatsCopyWith<$Res> {
  _$GetCatsCopyWithImpl(GetCats _value, $Res Function(GetCats) _then)
      : super(_value, (v) => _then(v as GetCats));

  @override
  GetCats get _value => super._value as GetCats;
}

class _$GetCats implements GetCats {
  const _$GetCats();

  @override
  String toString() {
    return 'MainPageEvent.getCats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCats);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCats(),
    @required Result getFacts(),
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
    @required Result updateFavorite(int index, Cat cat, bool isChecked),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return getCats();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result getFacts(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
    Result updateFavorite(int index, Cat cat, bool isChecked),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCats != null) {
      return getCats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCats(GetCats value),
    @required Result getFacts(GetFacts value),
    @required Result markAsFavorite(MarkAsFavorite value),
    @required Result updateFavorite(UpdateFavorite value),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return getCats(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result getFacts(GetFacts value),
    Result markAsFavorite(MarkAsFavorite value),
    Result updateFavorite(UpdateFavorite value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCats != null) {
      return getCats(this);
    }
    return orElse();
  }
}

abstract class GetCats implements MainPageEvent {
  const factory GetCats() = _$GetCats;
}

abstract class $GetFactsCopyWith<$Res> {
  factory $GetFactsCopyWith(GetFacts value, $Res Function(GetFacts) then) =
      _$GetFactsCopyWithImpl<$Res>;
}

class _$GetFactsCopyWithImpl<$Res> extends _$MainPageEventCopyWithImpl<$Res>
    implements $GetFactsCopyWith<$Res> {
  _$GetFactsCopyWithImpl(GetFacts _value, $Res Function(GetFacts) _then)
      : super(_value, (v) => _then(v as GetFacts));

  @override
  GetFacts get _value => super._value as GetFacts;
}

class _$GetFacts implements GetFacts {
  const _$GetFacts();

  @override
  String toString() {
    return 'MainPageEvent.getFacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCats(),
    @required Result getFacts(),
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
    @required Result updateFavorite(int index, Cat cat, bool isChecked),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return getFacts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result getFacts(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
    Result updateFavorite(int index, Cat cat, bool isChecked),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFacts != null) {
      return getFacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCats(GetCats value),
    @required Result getFacts(GetFacts value),
    @required Result markAsFavorite(MarkAsFavorite value),
    @required Result updateFavorite(UpdateFavorite value),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return getFacts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result getFacts(GetFacts value),
    Result markAsFavorite(MarkAsFavorite value),
    Result updateFavorite(UpdateFavorite value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFacts != null) {
      return getFacts(this);
    }
    return orElse();
  }
}

abstract class GetFacts implements MainPageEvent {
  const factory GetFacts() = _$GetFacts;
}

abstract class $MarkAsFavoriteCopyWith<$Res> {
  factory $MarkAsFavoriteCopyWith(
          MarkAsFavorite value, $Res Function(MarkAsFavorite) then) =
      _$MarkAsFavoriteCopyWithImpl<$Res>;
  $Res call({int index, Cat cat, bool isChecked});
}

class _$MarkAsFavoriteCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res>
    implements $MarkAsFavoriteCopyWith<$Res> {
  _$MarkAsFavoriteCopyWithImpl(
      MarkAsFavorite _value, $Res Function(MarkAsFavorite) _then)
      : super(_value, (v) => _then(v as MarkAsFavorite));

  @override
  MarkAsFavorite get _value => super._value as MarkAsFavorite;

  @override
  $Res call({
    Object index = freezed,
    Object cat = freezed,
    Object isChecked = freezed,
  }) {
    return _then(MarkAsFavorite(
      index == freezed ? _value.index : index as int,
      cat == freezed ? _value.cat : cat as Cat,
      isChecked == freezed ? _value.isChecked : isChecked as bool,
    ));
  }
}

class _$MarkAsFavorite implements MarkAsFavorite {
  const _$MarkAsFavorite(this.index, this.cat, this.isChecked)
      : assert(index != null),
        assert(cat != null),
        assert(isChecked != null);

  @override
  final int index;
  @override
  final Cat cat;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'MainPageEvent.markAsFavorite(index: $index, cat: $cat, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MarkAsFavorite &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.cat, cat) ||
                const DeepCollectionEquality().equals(other.cat, cat)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(cat) ^
      const DeepCollectionEquality().hash(isChecked);

  @override
  $MarkAsFavoriteCopyWith<MarkAsFavorite> get copyWith =>
      _$MarkAsFavoriteCopyWithImpl<MarkAsFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCats(),
    @required Result getFacts(),
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
    @required Result updateFavorite(int index, Cat cat, bool isChecked),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return markAsFavorite(index, cat, isChecked);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result getFacts(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
    Result updateFavorite(int index, Cat cat, bool isChecked),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markAsFavorite != null) {
      return markAsFavorite(index, cat, isChecked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCats(GetCats value),
    @required Result getFacts(GetFacts value),
    @required Result markAsFavorite(MarkAsFavorite value),
    @required Result updateFavorite(UpdateFavorite value),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return markAsFavorite(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result getFacts(GetFacts value),
    Result markAsFavorite(MarkAsFavorite value),
    Result updateFavorite(UpdateFavorite value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (markAsFavorite != null) {
      return markAsFavorite(this);
    }
    return orElse();
  }
}

abstract class MarkAsFavorite implements MainPageEvent {
  const factory MarkAsFavorite(int index, Cat cat, bool isChecked) =
      _$MarkAsFavorite;

  int get index;
  Cat get cat;
  bool get isChecked;
  $MarkAsFavoriteCopyWith<MarkAsFavorite> get copyWith;
}

abstract class $UpdateFavoriteCopyWith<$Res> {
  factory $UpdateFavoriteCopyWith(
          UpdateFavorite value, $Res Function(UpdateFavorite) then) =
      _$UpdateFavoriteCopyWithImpl<$Res>;
  $Res call({int index, Cat cat, bool isChecked});
}

class _$UpdateFavoriteCopyWithImpl<$Res>
    extends _$MainPageEventCopyWithImpl<$Res>
    implements $UpdateFavoriteCopyWith<$Res> {
  _$UpdateFavoriteCopyWithImpl(
      UpdateFavorite _value, $Res Function(UpdateFavorite) _then)
      : super(_value, (v) => _then(v as UpdateFavorite));

  @override
  UpdateFavorite get _value => super._value as UpdateFavorite;

  @override
  $Res call({
    Object index = freezed,
    Object cat = freezed,
    Object isChecked = freezed,
  }) {
    return _then(UpdateFavorite(
      index == freezed ? _value.index : index as int,
      cat == freezed ? _value.cat : cat as Cat,
      isChecked == freezed ? _value.isChecked : isChecked as bool,
    ));
  }
}

class _$UpdateFavorite implements UpdateFavorite {
  const _$UpdateFavorite(this.index, this.cat, this.isChecked)
      : assert(index != null),
        assert(cat != null),
        assert(isChecked != null);

  @override
  final int index;
  @override
  final Cat cat;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'MainPageEvent.updateFavorite(index: $index, cat: $cat, isChecked: $isChecked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFavorite &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.cat, cat) ||
                const DeepCollectionEquality().equals(other.cat, cat)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(cat) ^
      const DeepCollectionEquality().hash(isChecked);

  @override
  $UpdateFavoriteCopyWith<UpdateFavorite> get copyWith =>
      _$UpdateFavoriteCopyWithImpl<UpdateFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCats(),
    @required Result getFacts(),
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
    @required Result updateFavorite(int index, Cat cat, bool isChecked),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return updateFavorite(index, cat, isChecked);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result getFacts(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
    Result updateFavorite(int index, Cat cat, bool isChecked),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFavorite != null) {
      return updateFavorite(index, cat, isChecked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCats(GetCats value),
    @required Result getFacts(GetFacts value),
    @required Result markAsFavorite(MarkAsFavorite value),
    @required Result updateFavorite(UpdateFavorite value),
  }) {
    assert(getCats != null);
    assert(getFacts != null);
    assert(markAsFavorite != null);
    assert(updateFavorite != null);
    return updateFavorite(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result getFacts(GetFacts value),
    Result markAsFavorite(MarkAsFavorite value),
    Result updateFavorite(UpdateFavorite value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFavorite != null) {
      return updateFavorite(this);
    }
    return orElse();
  }
}

abstract class UpdateFavorite implements MainPageEvent {
  const factory UpdateFavorite(int index, Cat cat, bool isChecked) =
      _$UpdateFavorite;

  int get index;
  Cat get cat;
  bool get isChecked;
  $UpdateFavoriteCopyWith<UpdateFavorite> get copyWith;
}

class _$MainPageStateTearOff {
  const _$MainPageStateTearOff();

// ignore: unused_element
  _MainPageState call(
      {bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty}) {
    return _MainPageState(
      signedOut: signedOut,
      requestData: requestData,
      isChecked: isChecked,
      cats: cats,
      favoriteCats: favoriteCats,
      facts: facts,
      catsIsEmpty: catsIsEmpty,
      factsIsEmpty: factsIsEmpty,
    );
  }
}

// ignore: unused_element
const $MainPageState = _$MainPageStateTearOff();

mixin _$MainPageState {
  bool get signedOut;
  bool get requestData;
  bool get isChecked;
  Cats get cats;
  Cats get favoriteCats;
  Facts get facts;
  bool get catsIsEmpty;
  bool get factsIsEmpty;

  $MainPageStateCopyWith<MainPageState> get copyWith;
}

abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res>;
  $Res call(
      {bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty});
}

class _$MainPageStateCopyWithImpl<$Res>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  final MainPageState _value;
  // ignore: unused_field
  final $Res Function(MainPageState) _then;

  @override
  $Res call({
    Object signedOut = freezed,
    Object requestData = freezed,
    Object isChecked = freezed,
    Object cats = freezed,
    Object favoriteCats = freezed,
    Object facts = freezed,
    Object catsIsEmpty = freezed,
    Object factsIsEmpty = freezed,
  }) {
    return _then(_value.copyWith(
      signedOut: signedOut == freezed ? _value.signedOut : signedOut as bool,
      requestData:
          requestData == freezed ? _value.requestData : requestData as bool,
      isChecked: isChecked == freezed ? _value.isChecked : isChecked as bool,
      cats: cats == freezed ? _value.cats : cats as Cats,
      favoriteCats:
          favoriteCats == freezed ? _value.favoriteCats : favoriteCats as Cats,
      facts: facts == freezed ? _value.facts : facts as Facts,
      catsIsEmpty:
          catsIsEmpty == freezed ? _value.catsIsEmpty : catsIsEmpty as bool,
      factsIsEmpty:
          factsIsEmpty == freezed ? _value.factsIsEmpty : factsIsEmpty as bool,
    ));
  }
}

abstract class _$MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$MainPageStateCopyWith(
          _MainPageState value, $Res Function(_MainPageState) then) =
      __$MainPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty});
}

class __$MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res>
    implements _$MainPageStateCopyWith<$Res> {
  __$MainPageStateCopyWithImpl(
      _MainPageState _value, $Res Function(_MainPageState) _then)
      : super(_value, (v) => _then(v as _MainPageState));

  @override
  _MainPageState get _value => super._value as _MainPageState;

  @override
  $Res call({
    Object signedOut = freezed,
    Object requestData = freezed,
    Object isChecked = freezed,
    Object cats = freezed,
    Object favoriteCats = freezed,
    Object facts = freezed,
    Object catsIsEmpty = freezed,
    Object factsIsEmpty = freezed,
  }) {
    return _then(_MainPageState(
      signedOut: signedOut == freezed ? _value.signedOut : signedOut as bool,
      requestData:
          requestData == freezed ? _value.requestData : requestData as bool,
      isChecked: isChecked == freezed ? _value.isChecked : isChecked as bool,
      cats: cats == freezed ? _value.cats : cats as Cats,
      favoriteCats:
          favoriteCats == freezed ? _value.favoriteCats : favoriteCats as Cats,
      facts: facts == freezed ? _value.facts : facts as Facts,
      catsIsEmpty:
          catsIsEmpty == freezed ? _value.catsIsEmpty : catsIsEmpty as bool,
      factsIsEmpty:
          factsIsEmpty == freezed ? _value.factsIsEmpty : factsIsEmpty as bool,
    ));
  }
}

class _$_MainPageState implements _MainPageState {
  const _$_MainPageState(
      {this.signedOut,
      this.requestData,
      this.isChecked,
      this.cats,
      this.favoriteCats,
      this.facts,
      this.catsIsEmpty,
      this.factsIsEmpty});

  @override
  final bool signedOut;
  @override
  final bool requestData;
  @override
  final bool isChecked;
  @override
  final Cats cats;
  @override
  final Cats favoriteCats;
  @override
  final Facts facts;
  @override
  final bool catsIsEmpty;
  @override
  final bool factsIsEmpty;

  @override
  String toString() {
    return 'MainPageState(signedOut: $signedOut, requestData: $requestData, isChecked: $isChecked, cats: $cats, favoriteCats: $favoriteCats, facts: $facts, catsIsEmpty: $catsIsEmpty, factsIsEmpty: $factsIsEmpty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainPageState &&
            (identical(other.signedOut, signedOut) ||
                const DeepCollectionEquality()
                    .equals(other.signedOut, signedOut)) &&
            (identical(other.requestData, requestData) ||
                const DeepCollectionEquality()
                    .equals(other.requestData, requestData)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)) &&
            (identical(other.cats, cats) ||
                const DeepCollectionEquality().equals(other.cats, cats)) &&
            (identical(other.favoriteCats, favoriteCats) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteCats, favoriteCats)) &&
            (identical(other.facts, facts) ||
                const DeepCollectionEquality().equals(other.facts, facts)) &&
            (identical(other.catsIsEmpty, catsIsEmpty) ||
                const DeepCollectionEquality()
                    .equals(other.catsIsEmpty, catsIsEmpty)) &&
            (identical(other.factsIsEmpty, factsIsEmpty) ||
                const DeepCollectionEquality()
                    .equals(other.factsIsEmpty, factsIsEmpty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(signedOut) ^
      const DeepCollectionEquality().hash(requestData) ^
      const DeepCollectionEquality().hash(isChecked) ^
      const DeepCollectionEquality().hash(cats) ^
      const DeepCollectionEquality().hash(favoriteCats) ^
      const DeepCollectionEquality().hash(facts) ^
      const DeepCollectionEquality().hash(catsIsEmpty) ^
      const DeepCollectionEquality().hash(factsIsEmpty);

  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith =>
      __$MainPageStateCopyWithImpl<_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty}) = _$_MainPageState;

  @override
  bool get signedOut;
  @override
  bool get requestData;
  @override
  bool get isChecked;
  @override
  Cats get cats;
  @override
  Cats get favoriteCats;
  @override
  Facts get facts;
  @override
  bool get catsIsEmpty;
  @override
  bool get factsIsEmpty;
  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith;
}
