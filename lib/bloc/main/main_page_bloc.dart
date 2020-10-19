import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_cat_app/core/cats/cat.dart';
import 'package:test_cat_app/core/cats/cats_data.dart';
import 'package:test_cat_app/core/facts/fact_data.dart';
import 'package:test_cat_app/http/http_facade.dart';
import 'package:test_cat_app/repository/shared_pref.dart';

part 'main_page_bloc.freezed.dart';
part 'main_page_event.dart';
part 'main_page_state.dart';

@lazySingleton
class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  final HttpFacade _httpFacade;
  final SharedPrefs _sharedPrefs;

  MainPageBloc(this._httpFacade, this._sharedPrefs)
      : super(MainPageState.initial());

  @override
  Stream<MainPageState> mapEventToState(
    MainPageEvent event,
  ) async* {
    yield* event.map(
      getCats: (e) async* {
        debugPrint("inside getCats");
        Cats cats = await _httpFacade.getCatsImages();
        if (cats.success) {
          // debugPrint("Cats received ${cats.list.length}");
          _sharedPrefs.cats = cats;
          yield state.copyWith(cats: cats);
        } else {
          debugPrint("Cats not received");
          Cats cats = _sharedPrefs.cats;
          if (cats != null) {
            debugPrint("_sharedPrefs.cats");
            yield state.copyWith(cats: cats);
          } else {
            debugPrint("Cats = catsIsEmpty");
            yield state.copyWith(catsIsEmpty: true);
          }
        }
      },
      getFacts: (e) async* {
        // debugPrint("inside getFacts");
        Facts facts = await _httpFacade.getCatsFacts();
        if (facts.success) {
          // debugPrint("Facts received");
          _sharedPrefs.facts = facts;
          yield state.copyWith(facts: facts);
        } else {
          debugPrint("Facts not received");
          Facts facts = _sharedPrefs.facts;
          if (facts != null) {
            debugPrint("_sharedPrefs.facts");
            yield state.copyWith(facts: facts);
          } else {
            debugPrint("Facts = factsIsEmpty");
            yield state.copyWith(factsIsEmpty: true);
          }
        }
      },
      markAsFavorite: (e) async* {
        // debugPrint("inside bloc markAsFavorite" );
        state.favoriteCats.list.clear();
        Cat cat =
            state.cats.list.firstWhere((element) => element.id == e.cat.id);
        cat.isFavorite = e.isChecked;
        List<Cat> newCatsList =
            state.cats.list.where((item) => item.isFavorite).toList();
        yield state.copyWith(
          cats: Cats(list: state.cats.list, success: true),
          favoriteCats: Cats(list: newCatsList, success: true),
          isChecked: e.isChecked,
        );
      },
      updateFavorite: (e) async* {
        // debugPrint("inside bloc updateFavorite" );
        state.favoriteCats.list.clear();
        Cat cat =
            state.cats.list.firstWhere((element) => element.id == e.cat.id);
        cat.isFavorite = e.isChecked;
        List<Cat> newCatsList =
            state.cats.list.where((item) => item.isFavorite).toList();
        yield state.copyWith(
          cats: Cats(list: state.cats.list, success: true),
          favoriteCats: Cats(list: newCatsList, success: true),
          isChecked: e.isChecked,
        );
      },
    );
  }
}
