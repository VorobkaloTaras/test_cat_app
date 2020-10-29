part of 'main_page_bloc.dart';

@freezed
abstract class MainPageEvent with _$MainPageEvent {

  const factory MainPageEvent.getCats() = GetCats;

  const factory MainPageEvent.markAsFavorite(
      int index, Cat cat, bool isChecked) = MarkAsFavorite;
}
