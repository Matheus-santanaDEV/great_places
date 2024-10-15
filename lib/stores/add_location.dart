import 'dart:io';

import 'package:mobx/mobx.dart';
part 'add_location.g.dart';

class AddLocation = _AddLocation with _$AddLocation;

abstract class _AddLocation with Store{

    @observable
    late File storedImage;

    @action
    void takePicture() async {

    }
  
}