import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SafeCubit<State> extends Cubit<State> {
  SafeCubit(super.initialState);

  @override
  void emit(State state) {
    if (!isClosed) {
      super.emit(state);
    }
  }

  /// Helper method for async operations
  Future<void> safeEmit(Future<State> Function() stateGetter) async {
    try {
      final state = await stateGetter();
      if (!isClosed) {
        emit(state);
      }
    } catch (e) {
      if (!isClosed) {
        // Handle error or rethrow
        rethrow;
      }
    }
  }
}