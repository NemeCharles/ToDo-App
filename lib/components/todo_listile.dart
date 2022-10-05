import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class TodoListTile extends StatelessWidget {
  const TodoListTile({
    Key? key, required this.todo, required this.isDone, required this.toggleCheckbox, required this.delete,
  }) : super(key: key);

  final String todo;
  final  bool isDone;
  final void Function(bool?) toggleCheckbox;
  final void Function(BuildContext) delete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 33),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: delete,
              icon: Icons.delete,
              backgroundColor: Colors.black,
              borderRadius: BorderRadius.circular(10),
            )
          ],
        ),
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
                  onChanged: toggleCheckbox,
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
      ),
    );
  }
}
