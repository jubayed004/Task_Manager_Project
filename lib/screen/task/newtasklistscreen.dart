import 'package:flutter/material.dart';
import 'package:taskmanager/utility/utility.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("New Task List"),
      ),
    );
  }
}
