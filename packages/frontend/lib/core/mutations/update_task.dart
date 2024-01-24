import 'package:shared/shared.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data/remote_task_repo.dart';
import '../store/task_store.dart';
import 'get_all_task.dart';

class UpdateTaskMutation extends VxMutation<TaskStore> {
  final Task task;

  UpdateTaskMutation(this.task);

  @override
  perform() async {
    await RemoteTaskRepo().updateTask(task);
    GetAllTaskMutation();
  }
}
