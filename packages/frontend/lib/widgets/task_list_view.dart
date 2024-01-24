import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/mutations/add_task.dart';
import '../core/mutations/delete_task.dart';
import '../core/mutations/get_all_task.dart';
import '../core/mutations/update_task.dart';
import '../core/store/task_store.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBuilder(
      mutations: const {GetAllTaskMutation, AddTaskMutation},
      builder: (context, store, status) {
        final tasks = (store as TaskStore).tasks;
        return Column(
          children: [
            Expanded(
              child: status == VxStatus.loading
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        final task = tasks[index];
                        return ListTile(
                          onTap: () {
                            final newTask =
                                task.copyWith(isCompleted: !task.isCompleted);
                            UpdateTaskMutation(newTask);
                          },
                          title: Text(task.title),
                          leading: task.isCompleted
                              ? const Icon(Icons.check_box)
                              : const Icon(Icons.check_box_outline_blank),
                          trailing: IconButton(
                            onPressed: () {
                              DeleteTaskMutation(task.id);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        );
                      },
                    ),
            ),
          ],
        );
      },
    );
  }
}
