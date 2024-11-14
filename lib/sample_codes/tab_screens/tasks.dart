import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Screen"),
      ),
      body: const Center(
        child: Text("Task Screen"),
      ),
    );
  }
}
