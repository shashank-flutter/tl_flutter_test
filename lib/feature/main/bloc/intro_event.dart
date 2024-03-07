part of 'intro_bloc.dart';

@immutable
abstract class IntroEvent {}

class ChangeIntroPage extends IntroEvent{
  final int index;

  ChangeIntroPage(this.index);
}
