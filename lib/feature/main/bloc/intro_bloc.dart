import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'intro_event.dart';
part 'intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(IntroInitial()) {
    on<IntroEvent>((event, emit) {
      // TODO: implement event handler
      if(event is ChangeIntroPage){
        switch(event.index){
          case 0:
            emit(SwitchToIntroPage(0));
            break;
          case 1:
            emit(SwitchToIntroPage(1));
            break;
          case 2:
            emit(SwitchToIntroPage(2));
            break;
          case 3:
            emit(SwitchToIntroPage(3));
            break;
          case 4:
            emit(SwitchToIntroPage(4));
            break;
            default:
              emit(SwitchToIntroPage(0));
        }
      }

    });
  }
}
