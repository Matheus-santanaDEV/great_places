import 'package:flutter/material.dart';
import 'package:great_places/components/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({super.key});

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();

  void _submitForm() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo local'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(labelText: 'Título'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ImageInput(),
                ],
              ),
            ),
          ),
          TextButton.icon(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.indigo),
                elevation: WidgetStatePropertyAll(0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            onPressed: _submitForm,
            label: const Text(
              'Adicionar',
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
