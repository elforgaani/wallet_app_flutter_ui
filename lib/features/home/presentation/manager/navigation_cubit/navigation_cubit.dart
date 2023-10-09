// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(0);

  void indexChanged(int index) => emit(index);
}
