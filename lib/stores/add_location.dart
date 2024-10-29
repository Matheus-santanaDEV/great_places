import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
part 'add_location.g.dart';

class AddLocation = _AddLocation with _$AddLocation;

abstract class _AddLocation with Store{
    
    @observable
    var titleController = TextEditingController();

    @observable
    File? storedImage;


   //Função para tirar a foto do local 
    @action
     takePicture() async {
      final ImagePicker _picker = ImagePicker();

      XFile imageFile = await _picker.pickImage(
        source: ImageSource.camera,
        maxWidth: 600, ) as XFile;


        // if(imageFile == null) return;
        
      storedImage = File(imageFile.path);

    }
  
}