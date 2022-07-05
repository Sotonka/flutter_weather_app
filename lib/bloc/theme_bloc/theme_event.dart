part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({required this.theme});
  @override
  List<Object?> get props => [theme];
} 

/* @freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.change({
    required AppTheme theme,
  }) = ThemeEventChange;
} */
