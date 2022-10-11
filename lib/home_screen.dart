import 'package:flutter/material.dart';
import 'package:todo_app/provider/todolist_controller.dart';
import 'components/modal_sheet.dart';
import 'components/todo_listile.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TodoListController todoController = Get.put(TodoListController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Column(
          children: const [
            SizedBox(height: 15,),
            Text('TO DO',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black
              )
            ),
          ],
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
        child: GetBuilder<TodoListController>(builder: (_) {
              if(todoController.tasks.isNotEmpty) {
               return  SingleChildScrollView(
                 child: Column(
                   children: [
                     const SizedBox(height: 10,),
                     SizedBox(
                       height: size.height,
                       child: ListView.builder(itemBuilder: (context, index) {
                         return  TodoListTile(
                           todo: todoController.getTasks(index).task,
                           isDone: todoController.getTasks(index).isDone,
                           toggleCheckbox: (bool? newValue) {
                             todoController.toggleCheckbox(index, newValue);
                           },
                           delete: (context) {
                             todoController.removeTask(index);
                           },
                         );
                       },
                         itemCount: todoController.taskCount,
                       ),
                     )
                   ],
                 ),
               );
              } else {
                return const Center(
                  child: Text(
                      'No Tasks To Do',
                    style: TextStyle(
                      fontSize: 22
                    ),
                  ),
                );
              }
            }),
        ),
      );
  }
}
