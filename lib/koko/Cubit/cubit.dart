import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mansour_udemy/koko/Cubit/states.dart';

import '../Business screen.dart';
import '../Science News.dart';
import '../Sports News.dart';
import '../setting screen.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);


  int currentIndex = 1;
  List screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingScreen()
  ];

  void changeBottomNevBar(int index)
  {
    currentIndex = index;
    emit(NewsBottomNavState());
  }
}