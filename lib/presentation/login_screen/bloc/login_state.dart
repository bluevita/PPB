part of 'login_bloc.dart';

/// Represents the state of Login in the application.
// ignore_for_file: must_be_immutable
class LoginState extends Equatable {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final LoginModel? loginModelObj;

  LoginState({
    this.emailController,
    this.passwordController,
    this.loginModelObj,
  });

  @override
  List<Object?> get props =>
      [emailController, passwordController, loginModelObj];

  LoginState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
