import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/tiket_model.dart';
part 'tiket_event.dart';
part 'tiket_state.dart';

/// A bloc that manages the state of a Tiket according to the event that is dispatched to it.
class TiketBloc extends Bloc<TiketEvent, TiketState> {
  TiketBloc(TiketState initialState) : super(initialState);

  @override
  // ignore: override_on_non_overriding_member
  Stream<TiketState> mapEventToState(TiketEvent event) async* {
    if (event is TiketInitialEvent) {
      yield* _mapTiketInitialEventToState(event);
    }
  }

  Stream<TiketState> _mapTiketInitialEventToState(
      TiketInitialEvent event) async* {
    // Implement your logic for TiketInitialEvent here
  }
}
