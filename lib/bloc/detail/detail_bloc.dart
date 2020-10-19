import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cat_app/core/cats/cat.dart';

part 'detail_bloc.freezed.dart';
part 'detail_event.dart';
part 'detail_state.dart';

@injectable
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState());

  @override
  Stream<DetailState> mapEventToState(
      DetailEvent event,
      ) async* {
    yield* event.map(
      initial: (e) async*{
        debugPrint('inside DetailBloc initial');
        yield state.copyWith(isFavorite: e.cat.isFavorite);
      },
      favoriteClicked: (e) async*{
        yield state.copyWith(isFavorite: e.isFavorite);
      },
    );
  }
}
