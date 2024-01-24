import 'package:flutter/material.dart';

import 'core/data/remote_task_repo.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getData();
  runApp(const MyApp());
}

void getData() async {
  final data = await RemoteTaskRepo().fetchAllTasks();
  print(data);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
