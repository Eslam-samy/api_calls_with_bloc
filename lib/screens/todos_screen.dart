import 'package:api_calls_with_bloc/bloc/todos_bloc.dart';
import 'package:api_calls_with_bloc/widgets/loading_widget.dart';
import 'package:api_calls_with_bloc/widgets/error_widget.dart';
import 'package:api_calls_with_bloc/widgets/todos_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos app'), 
        centerTitle: true,
      ),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state is ErrorState) {
            return MyErrorWidget(message: state.message);
          } else if (state is LoadedState) {
            return TodosWidget(items: state.data);
          } else {
            return const LoadingWidget();
            ;
          }
        },
      ),
    );
  }
}
