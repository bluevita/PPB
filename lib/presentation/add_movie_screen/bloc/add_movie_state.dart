part of 'add_movie_bloc.dart';

/// Represents the state of AddMovie in the application.
// ignore_for_file: must_be_immutable
class AddMovieState extends Equatable {
  AddMovieState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.addMovieModelObj,
  });

  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  AddMovieModel? addMovieModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        addMovieModelObj,
      ];

  AddMovieState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    AddMovieModel? addMovieModelObj,
  }) {
    return AddMovieState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      addMovieModelObj: addMovieModelObj ?? this.addMovieModelObj,
    );
  }
}
