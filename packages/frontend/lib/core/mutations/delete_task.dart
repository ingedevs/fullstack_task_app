import 'package:velocity_x/velocity_x.dart';

import '../data/remote_task_repo.dart';
import '../store/task_store.dart';
import 'get_all_task.dart';

class DeleteTaskMutation extends VxMutation<TaskStore> {
  final String id;

  DeleteTaskMutation(this.id);

  @override
  perform() async {
    await RemoteTaskRepo().deleteTask(id);
    GetAllTaskMutation();
  }
}
