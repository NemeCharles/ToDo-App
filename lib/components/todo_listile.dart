import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({
    Key? key, required this.todo, required this.isDone,
  }) : super(key: key);

  final String todo;
  final  bool isDone;
  // final void Function(bool?) isDone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
          padding: const EdgeInsets.all(7),
          width: 320,
          decoration: BoxDecoration(
              color: const Color(0XFFDDDEE2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Checkbox(
                value: isDone,
                onChanged: null,
                fillColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              Text(todo,
                style: TextStyle(
                    fontSize: 17,
                    decoration: isDone ? TextDecoration.lineThrough : null
                ),
              )
            ],
          )
      ),
    );
  }
}
