import 'package:flutter/material.dart';
// ignore: unused_import
import '../core/app_export.dart';
import '../presentation/add_movie_screen/add_movie_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/film_page_screen/film_page_screen.dart';
import '../presentation/history_screen/history_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/kategori_action_screen/kategori_action_screen.dart';
import '../presentation/kategori_family_screen/kategori_family_screen.dart';
import '../presentation/kategori_horror_screen/kategori_horror_screen.dart';
import '../presentation/kategori_romance_screen/kategori_romance_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/payment_method_one_screen/payment_method_one_screen.dart';
import '../presentation/payment_method_screen/payment_method_screen.dart';
import '../presentation/payment_method_two_screen/payment_method_two_screen.dart';
import '../presentation/profil_screen/profil_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/reservasi_screen/reservasi_screen.dart';
import '../presentation/tampilan_awal_screen/tampilan_awal_screen.dart';
import '../presentation/tiket_screen/tiket_screen.dart';

class AppRoutes {
  static const String tampilanAwalScreen = '/tampilan_awal_screen';
  static const String registerScreen = '/register_screen';
  static const String loginScreen = '/login_screen';
  static const String homeScreen = '/home_screen';
  static const String tiketScreen = '/tiket_screen';
  static const String historyScreen = '/history_screen';
  static const String profilScreen = '/profil_screen';
  static const String addMovieScreen = '/add_movie_screen';
  static const String kategoriHorrorScreen = '/kategori_horror_screen';
  static const String kategoriRomanceScreen = '/kategori_romance_screen';
  static const String kategoriFamilyScreen = '/kategori_family_screen';
  static const String kategoriActionScreen = '/kategori_action_screen';
  static const String filmPageScreen = '/film_page_screen';
  static const String reservasiScreen = '/reservasi_screen';
  static const String paymentMethodScreen = '/payment_method_screen';
  static const String paymentMethodOneScreen = '/payment_method_one_screen';
  static const String paymentMethodTwoScreen = '/payment_method_two_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        tampilanAwalScreen: (context) => const TampilanAwalScreen(),
        registerScreen: (context) => RegisterScreen(),
        loginScreen: (context) => LoginScreen(),
        homeScreen: (context) => const HomeScreen(),
        tiketScreen: (context) => const TiketScreen(),
        historyScreen: (context) => const HistoryScreen(),
        profilScreen: (context) => const ProfilScreen(),
        addMovieScreen: (context) => AddMovieScreen(),
        kategoriHorrorScreen: (context) => const KategoriHorrorScreen(),
        kategoriRomanceScreen: (context) => const KategoriRomanceScreen(),
        kategoriFamilyScreen: (context) => const KategoriFamilyScreen(),
        kategoriActionScreen: (context) => const KategoriActionScreen(),
        filmPageScreen: (context) => const FilmPageScreen(),
        reservasiScreen: (context) => const ReservasiScreen(),
        paymentMethodScreen: (context) => const PaymentMethodScreen(),
        paymentMethodOneScreen: (context) => const PaymentMethodOneScreen(),
        paymentMethodTwoScreen: (context) => const PaymentMethodTwoScreen(),
        appNavigationScreen: (context) => const AppNavigationScreen(),
        initialRoute: (context) => const TampilanAwalScreen(),
      };
}
