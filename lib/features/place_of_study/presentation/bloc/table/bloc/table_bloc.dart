
import 'package:dashbord_cafe/core/resources/data_state.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/usecases/table.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/table/bloc/table_event.dart';
import 'package:dashbord_cafe/features/place_of_study/presentation/bloc/table/bloc/table_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TableOfCafesBloc extends Bloc<TableEvent, TableState> {
  final GetTableUseCase _getTableUseCase;
  final PostTableUseCase _postTableUseCase;
  final PutTableUseCase _putTableUseCase;
  final DeletTableUseCase _deletTableUseCase;

  TableOfCafesBloc(this._getTableUseCase, this._postTableUseCase, this._putTableUseCase, this._deletTableUseCase) : super(const TablesLoadingState()) {
    on<GetTables>(onGetTable);

    on<PostTable>(onPostTable);

    on<PutTable>(onPutTable);
    
    on<DeletTable>(onDeletTable);
  }

  void onGetTable(GetTables event, Emitter<TableState> emit) async {
    final dataState = await _getTableUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(TablesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(TablesErrorState(dataState.exception!));
    }
  }

   void onPostTable(PostTable event, Emitter<TableState> emit) async {
    final dataState = await _postTableUseCase(params: event.tableEntity);

    if (dataState is DataSuccess ) {
      emit(PostTablesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(TablesErrorState(dataState.exception!));
    }
  }
   void onPutTable(PutTable event, Emitter<TableState> emit) async {
    final dataState = await _putTableUseCase();

    if (dataState is DataSuccess ) {
      emit(PutTablesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(TablesErrorState(dataState.exception!));
    }
  }
   void onDeletTable(DeletTable event, Emitter<TableState> emit) async {
    final dataState = await _deletTableUseCase();

    if (dataState is DataSuccess ) {
      emit(DeletTablesDoneState(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(TablesErrorState(dataState.exception!));
    }
  }
}
