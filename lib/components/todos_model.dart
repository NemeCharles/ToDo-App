import 'package:flutter/material.dart';

class TodoModel {
  late String task;
  bool isDone = false;

  TodoModel({required this.task, this.isDone = false});
}
