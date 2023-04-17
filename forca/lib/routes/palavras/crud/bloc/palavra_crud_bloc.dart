import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'palavra_crud_event.dart';
part 'palavra_crud_state.dart';

class PalavraBloc extends Bloc<PalavraCRUDEvent, PalavraCRUDState> {
  PalavraBloc() : super(PalavraModelInitialized()) {
    on<PalavraCRUDEvent>(
      (event, emit) {},
    );
  }
}
