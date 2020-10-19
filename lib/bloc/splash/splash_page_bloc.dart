import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_page_bloc.freezed.dart';
part 'splash_page_event.dart';
part 'splash_page_state.dart';

@injectable
class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState> {
  SplashPageBloc() : super(SplashPageState());

  @override
  Stream<SplashPageState> mapEventToState(SplashPageEvent event) async* {

    yield* event.map(
      noEvent: (e) async* {});
        yield state;
  }
}
