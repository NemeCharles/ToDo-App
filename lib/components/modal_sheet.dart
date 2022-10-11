import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/provider/todolist_controller.dart';


class ModalSheet extends StatefulWidget {
  const ModalSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {

  final myController = TextEditingController();
  late String newTask;

  void updateValue() {
    newTask = myController.text;
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(updateValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TodoListController todoController = Get.find();
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
            color: Color(0XFFDDDEE2),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35),
          child: Column(
            mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                    'Add Task',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.black
                    )
                ),
                TextField(
                  controller: myController,
                  cursorColor: Colors.black,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  style: (
                      const TextStyle(
                          fontSize: 18
                      )
                  ),
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.5
                          )
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.5
                          )
                      )
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    todoController.addTask(newTask);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    minimumSize: MaterialStateProperty.all<Size>(const Size(290, 50)),
                  ),
                )
              ]
          ),
        )
    );
  }
}
