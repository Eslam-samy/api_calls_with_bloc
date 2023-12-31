import 'package:api_calls_with_bloc/api/todo_api.dart';
import 'package:api_calls_with_bloc/bloc/todos_bloc.dart';
import 'package:api_calls_with_bloc/helpers/my_bloc_observer.dart';
import 'package:api_calls_with_bloc/screens/todos_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodosBloc(api: TodosApi())..add(GetAllTodosEvent()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TodosScreen(),
      ),
    );
  }
}
