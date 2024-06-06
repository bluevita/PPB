part of 'theme_bloc.dart';

class ThemeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThemeChangeEvent extends ThemeEvent {
  final String themeType;

  ThemeChangeEvent({required this.themeType}) : super();

  @override
  List<Object?> get props => [themeType];
}
