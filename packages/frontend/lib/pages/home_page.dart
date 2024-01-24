import 'package:flutter/material.dart';
import 'package:frontend/core/mutations/get_all_task.dart';

import '../widgets/add_task_field.dart';
import '../widgets/task_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task App'),
        actions: [
          IconButton(
            onPressed: () => GetAllTaskMutation(),
            icon: const Icon(Icons.sync),
          ),
        ],
      ),
      body: const SafeArea(
        child: TaskListView(),
      ),
      bottomNavigationBar: const AddTaskField(),
    );
  }
}
