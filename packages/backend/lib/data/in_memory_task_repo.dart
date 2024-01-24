import 'package:shared/shared.dart';

/// A class that implements [TaskRepo] using an in-memory list.
class InMemoryTaskRepo implements TaskRepo {
  final List<Task> _data = [];

  /// Returns the list of tasks.
  List<Task> get tasks => _data;

  @override
  Future<Task> addTask(Task task) async {
    _data.add(task);
    return task;
  }

  @override
  Future<Task> deleteTask(String id) async {
    final task = await getTaskById(id);
    _data.remove(task);
    return task;
  }

  @override
  Future<List<Task>> fetchAllTasks() async {
    return _data;
  }

  @override
  Future<Task> getTaskById(String id) async {
    return _data.firstWhere((task) => task.id == id);
  }

  @override
  Future<Task> updateTask(Task task) async {
    final index = _data.indexWhere((t) => t.id == task.id);
    _data[index] = task;
    return task;
  }
}
