import 'package:flutter/material.dart';
import 'package:great_places/components/image_input.dart';
import 'package:great_places/stores/add_location.dart';
import 'package:provider/provider.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({super.key});

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  // final _titleController = TextEditingController();
  
 
  @override
  Widget build(BuildContext context) {

    AddLocation addLocation = Provider.of<AddLocation>(context);

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
                    controller: addLocation.titleController,
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
            onPressed: null,
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
