import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/data/repositories/local_settings_repository.dart';
import 'package:flutter_weather_app/ui/theme/theme_data.dart';

/* part 'theme_bloc.freezed.dart';
part 'theme_bloc.g.dart'; */
part 'theme_state.dart';
part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
            themeData: appThemeData[
                AppTheme.values[ThemeDatabaseService.getThemeSettings()]]!)) {
    on<ThemeEvent>((event, emit) {
      if (event is ThemeChanged) {
        emit.call(ThemeState(themeData: appThemeData[event.theme]!));
      }
    });
  }
} 



/* class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {

  ThemeBloc()
      : super(ThemeState.change(themeData: appThemeData[
                AppTheme.values[ThemeDatabaseService.getThemeSettings()]]!)) {
    on<ThemeEvent>((event, emit) {
     
        emit.call(ThemeState.change(themeData: appThemeData[event.theme]!));
      
    });
  }
} */