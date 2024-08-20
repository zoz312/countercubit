import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'countercubit_state.dart';

class CountercubitCubit extends Cubit<CountercubitState> {
  int contA = 0;
  int contb = 0;
  CountercubitCubit() : super(CountercubitInitial());
  void CounterIncerment({required String team, required int buttonNumber}) {
    if (team == "A") {
      contA += buttonNumber;
      emit(CounterAIncerment());
    } else {
      contb += buttonNumber;
      emit(CounterBIncerment());
    }
  }

  void reset() {
    contA = contb = 0;
  }
}
