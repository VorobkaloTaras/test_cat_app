part of 'main_page_bloc.dart';

@freezed
abstract class MainPageState with _$MainPageState {
  const factory MainPageState({
    bool signedOut,
    bool requestData,
    bool isChecked,
    Cats cats,
    Cats favoriteCats,
    Facts facts,
    bool catsIsEmpty,
    bool factsIsEmpty,
  }) = _MainPageState;

  factory MainPageState.initial() {
    return MainPageState(
        signedOut: false,
        requestData: false,
        isChecked: false,
        cats: Cats(list: [], success: false),
        favoriteCats: Cats(list: [], success: false),
        facts: Facts(data: [], success: false),
        catsIsEmpty: false,
        factsIsEmpty: false);
  }
}
