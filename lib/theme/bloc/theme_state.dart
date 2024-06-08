part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final String themeType;

  const ThemeState({required this.themeType});

  @override
  List<Object?> get props => [themeType];

  get theme => null;

  ThemeState copyWith({String? themeType}) {
    return ThemeState(themeType: themeType ?? this.themeType);
  }
}
