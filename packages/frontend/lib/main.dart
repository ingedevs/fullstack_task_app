import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/mutations/get_all_task.dart';
import 'core/store/task_store.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(VxState(
    store: TaskStore(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GetAllTaskMutation();

    return MaterialApp(
      title: 'Task App',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
