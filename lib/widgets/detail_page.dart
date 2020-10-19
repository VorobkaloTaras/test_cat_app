import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:network_to_file_image/network_to_file_image.dart';
import 'package:test_cat_app/bloc/detail/detail_bloc.dart';
import 'package:test_cat_app/core/cats/cat.dart';
import 'package:test_cat_app/core/facts/fact.dart';
import 'package:test_cat_app/injection.dart';

class DetailPage extends StatelessWidget {
  final Cat cat;
  final Fact fact;

  DetailPage(this.cat, this.fact);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DetailBloc>()..add(DetailEvent.initial(cat)),
      child: BlocConsumer<DetailBloc, DetailState>(
        listener: (context, state) {},
        builder: (context, state) {
          final result = state.isFavorite;
          return WillPopScope(
            onWillPop: () {
              debugPrint("DetailPage onWillPop");
              Navigator.pop(context, result);
              return;
            },
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  InkWell(
                    onTap: () {
                      debugPrint("click detected");
                      context
                          .bloc<DetailBloc>()
                          .add(DetailEvent.favoriteClicked(!state.isFavorite));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: SvgPicture.asset(state.isFavorite
                          ? 'assets/ic_heart_checked.svg'
                          : 'assets/ic_heart_unchecked.svg'),
                    ),
                  ),
                ],
                title: Text('Detail'),
              ),
              body: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: cat.id,
                        child: Image(
                          image: NetworkToFileImage(
                            debug: true,
                            processError: (_) {
                              debugPrint("error image download");
                            },
                            url: null,
                            file: File(cat.filePath),
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          fact.fact,
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
