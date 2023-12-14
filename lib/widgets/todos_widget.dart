import 'package:api_calls_with_bloc/models/todo.dart';
import 'package:flutter/material.dart';

class TodosWidget extends StatelessWidget {
  final List<Todo> items;
  const TodosWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(items[index].id.toString()),
              ),
              title: Text(items[index].title!),
              trailing: items[index].completed!
                  ? const Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  : null,
            ),
          )),
    );
  }
}
