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
        yield state.copyWith(isLoading: true);
        // debugPrint("inside getCats");

        Cats cats = state.cats;
        Cats favoriteCats = state.favoriteCats;
        Facts facts = state.facts;

        Cats receivedCats = await _httpFacade.getCatsImages();
        if (receivedCats.success) {
          // debugPrint("Cats received ${cats.list.length}");
          cats.list.addAll(receivedCats.list);
          _sharedPrefs.cats = cats;
        } else {
          // debugPrint("Cats not received");
          cats = _sharedPrefs.cats;
          favoriteCats = _sharedPrefs.favoriteCats;
        }
        // debugPrint(" getCats done");
        Facts receivedFacts = await _httpFacade.getCatsFacts();
        if (receivedFacts.success) {
          facts.data.addAll(receivedFacts.data);
          _sharedPrefs.facts = facts;
        } else {
          // debugPrint("Facts not received");
          facts = _sharedPrefs.facts;
        }
        // debugPrint(" getFacts done");
        yield state.copyWith(
            cats: cats,
            facts: facts,
            favoriteCats: favoriteCats,
            catsIsEmpty: cats == null,
            favoriteCatsIsEmpty: favoriteCats == null,
            factsIsEmpty: facts == null,
            isLoading: false);
      },
      markAsFavorite: (e) async* {
        debugPrint("inside bloc markAsFavorite");
        state.favoriteCats.list.clear();
        Cat cat =
            state.cats.list.firstWhere((element) => element.id == e.cat.id);
        cat.isFavorite = e.isChecked;
        List<Cat> favoriteCatsList =
            state.cats.list.where((item) => item.isFavorite).toList();
        Cats cats = Cats(list: state.cats.list, success: true);
        Cats favoriteCats = Cats(list: favoriteCatsList, success: true);
        yield state.copyWith(
          cats: cats,
          favoriteCats: favoriteCats,
          isChecked: e.isChecked,
        );
        _sharedPrefs.cats = cats;
        _sharedPrefs.favoriteCats = favoriteCats;
      },
    );
  }
}
