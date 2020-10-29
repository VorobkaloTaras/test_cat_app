part of 'main_page_bloc.dart';

@freezed
abstract class MainPageState with _$MainPageState {
  const factory MainPageState({
    int currentPage,
    bool isLoading,
    bool signedOut,
    bool requestData,
    bool isChecked,
    Cats cats,
    Cats favoriteCats,
    Facts facts,
    bool catsIsEmpty,
    bool factsIsEmpty,
    bool favoriteCatsIsEmpty,
  }) = _MainPageState;

  factory MainPageState.initial() {
    return MainPageState(
      isLoading: false,
      currentPage: 0,
      signedOut: false,
      requestData: false,
      isChecked: false,
      cats: Cats(list: [], success: false),
      favoriteCats: Cats(list: [], success: false),
      facts: Facts(data: [], success: false),
      catsIsEmpty: false,
      factsIsEmpty: false,
      favoriteCatsIsEmpty: false,
    );
  }
}
