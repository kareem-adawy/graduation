import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mansour_udemy/social%20app/Cubit/states.dart';
import 'package:mansour_udemy/social%20app/social%20app.dart';

class SocialCubit extends Cubit<SocialStates> {
  SocialCubit() : super(SocialInitialState());

  static SocialCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  //  void home() {
  //  currentIndex = Index
  //  print(currentIndex);
  // };

}

