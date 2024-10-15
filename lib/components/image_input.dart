import 'package:flutter/material.dart';
import 'package:great_places/stores/add_location.dart';
import 'package:provider/provider.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    AddLocation addLocation = Provider.of<AddLocation>(context);

    return Row(
      children: [
        Container(
          width: 180,
          height: 100,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          alignment: Alignment.center,
          child: addLocation.storedImage != null
              ? Image.file(
                  addLocation.storedImage,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : const Text('Nenhum imagem!'),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: TextButton.icon(
          onPressed: addLocation.takePicture,
          label: const Text('Tirar Foto'),
          icon: const Icon(Icons.camera),
        ))
      ],
    );
  }
}
