import 'package:flutter/material.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
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
                const TextField(
                  cursorColor: Colors.black,
                  textAlign: TextAlign.center,
                  autofocus: true,
                  style: (
                      TextStyle(
                          fontSize: 18
                      )
                  ),
                  decoration: InputDecoration(
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
