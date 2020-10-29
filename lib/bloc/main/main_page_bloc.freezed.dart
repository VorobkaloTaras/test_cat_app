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
  MarkAsFavorite markAsFavorite(int index, Cat cat, bool isChecked) {
    return MarkAsFavorite(
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
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCats(GetCats value),
    @required Result markAsFavorite(MarkAsFavorite value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result markAsFavorite(MarkAsFavorite value),
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
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
  }) {
    assert(getCats != null);
    assert(markAsFavorite != null);
    return getCats();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
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
    @required Result markAsFavorite(MarkAsFavorite value),
  }) {
    assert(getCats != null);
    assert(markAsFavorite != null);
    return getCats(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result markAsFavorite(MarkAsFavorite value),
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
    @required Result markAsFavorite(int index, Cat cat, bool isChecked),
  }) {
    assert(getCats != null);
    assert(markAsFavorite != null);
    return markAsFavorite(index, cat, isChecked);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCats(),
    Result markAsFavorite(int index, Cat cat, bool isChecked),
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
    @required Result markAsFavorite(MarkAsFavorite value),
  }) {
    assert(getCats != null);
    assert(markAsFavorite != null);
    return markAsFavorite(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCats(GetCats value),
    Result markAsFavorite(MarkAsFavorite value),
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

class _$MainPageStateTearOff {
  const _$MainPageStateTearOff();

// ignore: unused_element
  _MainPageState call(
      {int currentPage,
      bool isLoading,
      bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty,
      bool favoriteCatsIsEmpty}) {
    return _MainPageState(
      currentPage: currentPage,
      isLoading: isLoading,
      signedOut: signedOut,
      requestData: requestData,
      isChecked: isChecked,
      cats: cats,
      favoriteCats: favoriteCats,
      facts: facts,
      catsIsEmpty: catsIsEmpty,
      factsIsEmpty: factsIsEmpty,
      favoriteCatsIsEmpty: favoriteCatsIsEmpty,
    );
  }
}

// ignore: unused_element
const $MainPageState = _$MainPageStateTearOff();

mixin _$MainPageState {
  int get currentPage;
  bool get isLoading;
  bool get signedOut;
  bool get requestData;
  bool get isChecked;
  Cats get cats;
  Cats get favoriteCats;
  Facts get facts;
  bool get catsIsEmpty;
  bool get factsIsEmpty;
  bool get favoriteCatsIsEmpty;

  $MainPageStateCopyWith<MainPageState> get copyWith;
}

abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res>;
  $Res call(
      {int currentPage,
      bool isLoading,
      bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty,
      bool favoriteCatsIsEmpty});
}

class _$MainPageStateCopyWithImpl<$Res>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  final MainPageState _value;
  // ignore: unused_field
  final $Res Function(MainPageState) _then;

  @override
  $Res call({
    Object currentPage = freezed,
    Object isLoading = freezed,
    Object signedOut = freezed,
    Object requestData = freezed,
    Object isChecked = freezed,
    Object cats = freezed,
    Object favoriteCats = freezed,
    Object facts = freezed,
    Object catsIsEmpty = freezed,
    Object factsIsEmpty = freezed,
    Object favoriteCatsIsEmpty = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
      favoriteCatsIsEmpty: favoriteCatsIsEmpty == freezed
          ? _value.favoriteCatsIsEmpty
          : favoriteCatsIsEmpty as bool,
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
      {int currentPage,
      bool isLoading,
      bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty,
      bool favoriteCatsIsEmpty});
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
    Object currentPage = freezed,
    Object isLoading = freezed,
    Object signedOut = freezed,
    Object requestData = freezed,
    Object isChecked = freezed,
    Object cats = freezed,
    Object favoriteCats = freezed,
    Object facts = freezed,
    Object catsIsEmpty = freezed,
    Object factsIsEmpty = freezed,
    Object favoriteCatsIsEmpty = freezed,
  }) {
    return _then(_MainPageState(
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
      favoriteCatsIsEmpty: favoriteCatsIsEmpty == freezed
          ? _value.favoriteCatsIsEmpty
          : favoriteCatsIsEmpty as bool,
    ));
  }
}

class _$_MainPageState implements _MainPageState {
  const _$_MainPageState(
      {this.currentPage,
      this.isLoading,
      this.signedOut,
      this.requestData,
      this.isChecked,
      this.cats,
      this.favoriteCats,
      this.facts,
      this.catsIsEmpty,
      this.factsIsEmpty,
      this.favoriteCatsIsEmpty});

  @override
  final int currentPage;
  @override
  final bool isLoading;
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
  final bool favoriteCatsIsEmpty;

  @override
  String toString() {
    return 'MainPageState(currentPage: $currentPage, isLoading: $isLoading, signedOut: $signedOut, requestData: $requestData, isChecked: $isChecked, cats: $cats, favoriteCats: $favoriteCats, facts: $facts, catsIsEmpty: $catsIsEmpty, factsIsEmpty: $factsIsEmpty, favoriteCatsIsEmpty: $favoriteCatsIsEmpty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainPageState &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
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
                    .equals(other.factsIsEmpty, factsIsEmpty)) &&
            (identical(other.favoriteCatsIsEmpty, favoriteCatsIsEmpty) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteCatsIsEmpty, favoriteCatsIsEmpty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(signedOut) ^
      const DeepCollectionEquality().hash(requestData) ^
      const DeepCollectionEquality().hash(isChecked) ^
      const DeepCollectionEquality().hash(cats) ^
      const DeepCollectionEquality().hash(favoriteCats) ^
      const DeepCollectionEquality().hash(facts) ^
      const DeepCollectionEquality().hash(catsIsEmpty) ^
      const DeepCollectionEquality().hash(factsIsEmpty) ^
      const DeepCollectionEquality().hash(favoriteCatsIsEmpty);

  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith =>
      __$MainPageStateCopyWithImpl<_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  const factory _MainPageState(
      {int currentPage,
      bool isLoading,
      bool signedOut,
      bool requestData,
      bool isChecked,
      Cats cats,
      Cats favoriteCats,
      Facts facts,
      bool catsIsEmpty,
      bool factsIsEmpty,
      bool favoriteCatsIsEmpty}) = _$_MainPageState;

  @override
  int get currentPage;
  @override
  bool get isLoading;
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
  bool get favoriteCatsIsEmpty;
  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith;
}
