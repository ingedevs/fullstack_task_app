import 'package:frontend/core/data/remote_task_repo.dart';
import 'package:velocity_x/velocity_x.dart';

import '../store/task_store.dart';

class GetAllTaskMutation extends VxMutation<TaskStore> {
  GetAllTaskMutation();

  @override
  perform() async {
    final tasks = await RemoteTaskRepo().fetchAllTasks();
    store!.tasks = tasks;
  }
}
