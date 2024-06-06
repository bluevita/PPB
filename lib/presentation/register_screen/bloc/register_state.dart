part of 'register_bloc.dart';

/// Represents the state of Register in the application.
// ignore_for_file: must_be_immutable
class RegisterState extends Equatable {
  final TextEditingController? nameController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final RegisterModel? registerModelObj;

  RegisterState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.registerModelObj,
  });

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        registerModelObj,
      ];

  RegisterState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
