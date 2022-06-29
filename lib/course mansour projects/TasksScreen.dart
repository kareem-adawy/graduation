import 'package:flutter/cupertino.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("TASKS",
          style: TextStyle(
            fontSize: 50,
          ),),
        ],
      ),
    );
  }
}
