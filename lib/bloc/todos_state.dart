part of 'todos_bloc.dart';

sealed class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

final class LoadingState extends TodosState {}

final class LoadedState extends TodosState {
  final List<Todo> data;

  const LoadedState({required this.data});
  @override
  List<Object> get props => [data];
}

class ErrorState extends TodosState {
  final String message;

  const ErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
