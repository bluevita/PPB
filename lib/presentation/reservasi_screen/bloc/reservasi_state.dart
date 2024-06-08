part of 'reservasi_bloc.dart';

/// Represents the state of Reservasi in the application.
// ignore_for_file: must_be_immutable
class ReservasiState extends Equatable {
  ReservasiState({
    this.selectedDatesFromCalendar,
    this.reservasiModelObj,
  });

  ReservasiModel? reservasiModelObj;
  DateTime? selectedDatesFromCalendar;

  @override
  List<Object?> get props => [selectedDatesFromCalendar, reservasiModelObj];

  ReservasiState copyWith({
    DateTime? selectedDatesFromCalendar,
    ReservasiModel? reservasiModelObj,
  }) {
    return ReservasiState(
      selectedDatesFromCalendar:
          selectedDatesFromCalendar ?? this.selectedDatesFromCalendar,
      reservasiModelObj: reservasiModelObj ?? this.reservasiModelObj,
    );
  }
}
