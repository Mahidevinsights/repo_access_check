import 'package:flutter/material.dart';

class WatchList extends StatelessWidget {
  const WatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WatchList Screen"),
      ),
      body: const Center(
        child: Text("Watchlist Screen"),
      ),
    );
  }
}
