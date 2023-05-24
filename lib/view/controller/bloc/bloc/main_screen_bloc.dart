import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(MainScreenMahsulotlarState()) {
    on<MainScreenMahsulotlarEvent>((event, emit) {
      emit(MainScreenMahsulotlarState());
    });
    on<MainScreenYozishmalarEvent>((event, emit) {
      emit(MainScreenYozishmalarState());
    });
    on<MainScreenArxivEvent>((event, emit) {
      emit(MainScreenArxivState());
    });
    on<MainScreenSozlamalarEvent>((event, emit) {
      emit(MainScreenSozlamalarState());
    });
  }
}
