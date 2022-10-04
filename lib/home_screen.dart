import 'package:flutter/material.dart';
import 'components/modal_sheet.dart';
import 'components/todo_listile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // final List<TodoModel> todos = [
  //   TodoModel(task: 'Open An App', isDone: true),
  //   TodoModel(task: 'Close an App', isDone: false)
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TO DO',
          style: TextStyle(
            fontSize: 26,
            color: Colors.black
          )
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0XFFDDDEE2),
      ),
      backgroundColor: const Color(0XFFEEEFF5),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => const ModalSheet()
          );
        },
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Text('All Todos',
              style: TextStyle(
                fontSize: 27
              ),
            ),
            Column(
              children: const [
                TodoListTile(todo: 'Create ToDo', isDone: false,),
                TodoListTile(todo: 'Test Todo list', isDone: true,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


