import 'package:api_calls_with_bloc/api/todo_api.dart';
import 'package:api_calls_with_bloc/models/todo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodosApi api;
  TodosBloc({required this.api}) : super(LoadingState()) {
    on<TodosEvent>((event, emit) async {
      if (event is GetAllTodosEvent) {
        emit(LoadingState());
        try {
          final todos = await api.getAllTodos();
          emit(LoadedState(data: todos));
        } catch (error) {
          emit(const ErrorState(message: "Something went wrong"));
        }
      }
    });
  }
}
