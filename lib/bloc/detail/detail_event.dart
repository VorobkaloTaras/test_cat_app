part of 'detail_bloc.dart';

@freezed
abstract class DetailEvent with _$DetailEvent {
  const factory DetailEvent.initial(Cat cat) = Initial;
  const factory DetailEvent.favoriteClicked(bool isFavorite) = FavoriteClicked;
}