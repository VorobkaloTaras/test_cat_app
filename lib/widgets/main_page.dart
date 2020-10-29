import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:network_to_file_image/network_to_file_image.dart';
import 'package:path/path.dart' as p;
import 'package:test_cat_app/bloc/main/main_page_bloc.dart';
import 'package:test_cat_app/bloc/sign_in/sign_in_form_bloc.dart';
import 'package:test_cat_app/core/cats/cat.dart';
import 'package:test_cat_app/core/user/app_user.dart';
import 'package:test_cat_app/core/user/user_account.dart';
import 'package:test_cat_app/injection.dart';
import 'package:test_cat_app/repository/app_directory.dart';
import 'package:test_cat_app/routes/router.gr.dart';
import 'package:test_cat_app/widgets/detail_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("MainPage created");
    final Map<String, Object> arguments =
        ModalRoute.of(context).settings.arguments;
    return BlocProvider(
      create: (context) => getIt<MainPageBloc>()..add(MainPageEvent.getCats()),
      child: BlocConsumer<MainPageBloc, MainPageState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            home: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        text: "Cats",
                      ),
                      Tab(
                        text: "Favorites",
                      ),
                      Tab(
                        text: "Profile",
                      ),
                    ],
                  ),
                  title: Text('Cats'),
                ),
                body: TabBarView(
                  children: [
                    _createCatsList(state, context),
                    _createCatsFavoritesList(state, context),
                    _createProfile(context, arguments['userData'], state),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _createCatsList(MainPageState state, BuildContext context) {
    debugPrint("main list UI created");
    if (state.cats.list != null &&
        state.cats.list.isNotEmpty &&
        !state.signedOut) {
      return _createList(state.cats.list, context, state.isChecked, state);
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  Widget _createCatsFavoritesList(MainPageState state, BuildContext context) {
    debugPrint("favorites list UI created");
    if (state.favoriteCats.list != null &&
        state.favoriteCats.list.isNotEmpty &&
        !state.signedOut) {
      return _createFavoritesList(
          state.favoriteCats.list, context, state.isChecked, state);
    } else {
      return Center(
        child: Text(
          'No favorites added',
          style: TextStyle(fontSize: 25),
        ),
      );
    }
  }

  Widget _createList(List<Cat> catsList, BuildContext context, bool isChecked,
      MainPageState state) {
    debugPrint('MainPage inside _createList');
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLoading = state.isLoading;
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          if (!isLoading) {
            isLoading = true;
            context.bloc<MainPageBloc>().add(MainPageEvent.getCats());
          }
        }
        return false;
      },
      child: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: catsList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                constraints: BoxConstraints(
                  minWidth: screenWidth,
                  maxWidth: screenWidth,
                  minHeight: screenWidth / 1.3,
                  maxHeight: double.infinity,
                ),
                color: Colors.white70,
                child: Stack(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        minWidth: screenWidth,
                        maxWidth: screenWidth,
                        minHeight: screenWidth / 1.3,
                        maxHeight: double.infinity,
                      ),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // debugPrint("image clicked");
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 1),
                                    pageBuilder: (_, __, ___) => DetailPage(
                                      catsList[index],
                                      state.facts.data[index],
                                    ),
                                  ),
                                ).then(
                                  (value) => {
                                    debugPrint(
                                        "MainPage -> detail returned $value to cats list"),
                                    context.bloc<MainPageBloc>().add(
                                          MainPageEvent.markAsFavorite(
                                            index,
                                            catsList[index],
                                            value,
                                          ),
                                        ),
                                  },
                                );
                              },
                              child: Hero(
                                tag: catsList[index].id,
                                child: Image(
                                  image: NetworkToFileImage(
                                    debug: true,
                                    processError: (_) {
                                      debugPrint(
                                          "MainPage error image download");
                                    },
                                    url: catsList[index].url,
                                    file: File(catsList[index].filePath),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(child: Container()),
                                InkWell(
                                  onTap: () {
                                    debugPrint("MainPage favorites tapped ");
                                    context.bloc<MainPageBloc>().add(
                                          MainPageEvent.markAsFavorite(
                                            index,
                                            catsList[index],
                                            !catsList[index].isFavorite,
                                          ),
                                        );
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    color: Colors.white,
                                    child: SvgPicture.asset(
                                        catsList[index].isFavorite
                                            ? 'assets/ic_heart_checked.svg'
                                            : 'assets/ic_heart_unchecked.svg'),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          isLoading
              ? Container(
                  color: Color.fromARGB(130, 255, 255, 255),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _createFavoritesList(List<Cat> catsList, BuildContext context,
      bool isChecked, MainPageState state) {
    debugPrint('MainPage inside _createFavoritesList');
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catsList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: catsList[index].width <= screenWidth
              ? catsList[index].width.toDouble()
              : screenWidth,
          color: Colors.white70,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // debugPrint("image clicked");
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          pageBuilder: (_, __, ___) => DetailPage(
                            catsList[index],
                            state.facts.data[index],
                          ),
                        ),
                      ).then(
                        (value) => {
                          debugPrint(
                              "MainPage detail returned -> $value to favorites cats list"),
                          Timer(
                            Duration(milliseconds: 300),
                            () => {
                              context.bloc<MainPageBloc>().add(
                                    MainPageEvent.markAsFavorite(
                                      index,
                                      catsList[index],
                                      value,
                                    ),
                                  ),
                            },
                          ),
                        },
                      );
                    },
                    child: Hero(
                      tag: catsList[index].id,
                      child: Image(
                        image: NetworkToFileImage(
                          debug: true,
                          processError: (_) {
                            debugPrint("MainPage error image download");
                          },
                          url: catsList[index].url,
                          file: File(catsList[index].filePath),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      InkWell(
                        onTap: () {
                          // debugPrint("MainPage favorites tapped ");
                          context.bloc<MainPageBloc>().add(
                              MainPageEvent.markAsFavorite(
                                  index,
                                  catsList[index],
                                  !catsList[index].isFavorite));
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.white,
                          child: SvgPicture.asset(catsList[index].isFavorite
                              ? 'assets/ic_heart_checked.svg'
                              : 'assets/ic_heart_unchecked.svg'),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _createProfile(
      BuildContext context, UserAccount account, MainPageState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
        ),
        CircleAvatar(
          radius: 100.0,
          backgroundImage: NetworkToFileImage(
            debug: true,
            processError: (_) {
              // debugPrint("MainPage error image download");
            },
            url: account.accountType == AccountType.google
                ? (account.appUser as GoogleUser).photoUrl
                : (account.appUser as FacebookUser).photoUrl,
            file: File(p.join(
              AppDirectory().path,
              account.accountType == AccountType.google
                  ? (account.appUser as GoogleUser).id
                  : (account.appUser as FacebookUser).id,
            )),
          ),
          onBackgroundImageError: (error, trace) {
            // debugPrint("MainPage avatar error cached");
          },
        ),
        Container(
          height: 8,
        ),
        Text(
          account.accountType == AccountType.google
              ? (account.appUser as GoogleUser).displayName != null
                  ? (account.appUser as GoogleUser).displayName
                  : "undefined"
              : (account.appUser as FacebookUser).name != null
                  ? (account.appUser as FacebookUser).name
                  : "undefined",
          style: TextStyle(fontSize: 27, color: Colors.black),
        ),
        Container(
          height: 20,
        ),
        Text(
          account.accountType == AccountType.google
              ? (account.appUser as GoogleUser).email != null
                  ? (account.appUser as GoogleUser).email
                  : "undefined"
              : (account.appUser as FacebookUser).email != null
                  ? (account.appUser as FacebookUser).email
                  : "undefined",
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
        Container(
          height: 35,
        ),
        OutlineButton(
          splashColor: Colors.grey,
          onPressed: () {
            debugPrint("MainPage sign out pressed");
            getIt<SignInFormBloc>().add(SignInFormEvent.signOutPressed());
            Navigator.popAndPushNamed(context, Routes.signInPage);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          highlightElevation: 0,
          borderSide: BorderSide(color: Colors.grey),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Text(
                    'Sign out',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
