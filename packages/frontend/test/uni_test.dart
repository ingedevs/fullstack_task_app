import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/core/data/remote_task_repo.dart';

void main() {
  test('Checking fetch tasks', () async {
    final response = await RemoteTaskRepo().fetchAllTasks();
    expect(response.length, 2);
  });
}
