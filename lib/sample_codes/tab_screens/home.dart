import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}