import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: HomePage Implement build method.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
