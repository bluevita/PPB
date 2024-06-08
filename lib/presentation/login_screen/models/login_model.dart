import 'package:equatable/equatable.dart';
// ignore: unused_import
import '../../../core/app_export.dart';

/// This class defines the variables used in the [login_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoginModel extends Equatable {
  // Add your variables here if any
  // For example:
  // final String email;
  // final String password;

  const LoginModel();

  LoginModel copyWith() {
    // Add your copy logic here if any variables are present
    // For example:
    // return LoginModel(email: email ?? this.email, password: password ?? this.password);
    return const LoginModel();
  }

  @override
  List<Object?> get props => [];
}
