import 'package:frontend/core/data/remote_task_repo.dart';
import 'package:frontend/core/store/task_store.dart';
import 'package:shared/shared.dart';
import 'package:uuid/uuid.dart';
import 'package:velocity_x/velocity_x.dart';

import 'get_all_task.dart';

class AddTaskMutation extends VxMutation<TaskStore> {
  final String title;

  AddTaskMutation(this.title);

  var uuid = const Uuid();

  @override
  perform() async {
    final Task newTask = Task(id: const Uuid().v4(), title: title);
    await RemoteTaskRepo().addTask(newTask);
    GetAllTaskMutation();
  }
}
