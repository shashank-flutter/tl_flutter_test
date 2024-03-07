part of 'intro_bloc.dart';

@immutable
abstract class IntroState {}

class IntroInitial extends IntroState {}
class SwitchToIntroPage extends IntroState {
  final int index;
  SwitchToIntroPage(this.index);

}
