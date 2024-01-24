import 'package:shared/shared.dart';

// TODO(ingedevs): If you want to use SQL, implement this class.

/// A SQL implementation of [TaskRepo].
class SQLTaskRepo implements TaskRepo {
  @override
  Future<Task> addTask(Task task) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTask(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Task>> fetchAllTasks() {
    throw UnimplementedError();
  }

  @override
  Future<Task> getTaskById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateTask(Task task) {
    throw UnimplementedError();
  }
}
