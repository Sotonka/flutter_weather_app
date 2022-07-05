part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final ThemeData themeData;
  const ThemeState({required this.themeData});

  @override
  List<Object?> get props => [themeData];
} 

/* @freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.change({required ThemeData themeData}) =
      ThemeStateChange;

  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
} */
