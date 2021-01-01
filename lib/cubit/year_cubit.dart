import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'year_state.dart';

class YearCubit extends Cubit<YearState> {
  YearCubit() : super(YearState(year: 0, tempYear: 1.0, returns: 1.0));

  void changeYear(changedYear) => emit(YearState(
        tempYear: changedYear,
        year: changedYear * 12,
      ));

  void changeReturns(changedReturn) => emit(YearState(
        returns: changedReturn,
      ));
  // get getYear()=>
}
