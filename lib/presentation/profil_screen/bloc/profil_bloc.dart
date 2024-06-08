// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/profil_model.dart';

part 'profil_event.dart';
part 'profil_state.dart';

/// A bloc that manages the state of a Profil according to the event that is dispatched to it.
class ProfilBloc extends Bloc<ProfilEvent, ProfilState> {
  ProfilBloc(ProfilState initialState) : super(initialState) {
    on<ProfilInitialEvent>(_onInitialize);
  }

  void _onInitialize(
    ProfilInitialEvent event,
    Emitter<ProfilState> emit,
  ) async {
    // Tambahkan logika untuk menginisialisasi state profil di sini
  }
}
