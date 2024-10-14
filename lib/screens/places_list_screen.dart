import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus lugares'),
        backgroundColor: Colors.indigo,
        actions: [IconButton(onPressed: () {
          context.push('/placeFormScreen');
        }, icon: const Icon(Icons.add))],
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
