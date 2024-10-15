// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_location.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddLocation on _AddLocation, Store {
  late final _$storedImageAtom =
      Atom(name: '_AddLocation.storedImage', context: context);

  @override
  File get storedImage {
    _$storedImageAtom.reportRead();
    return super.storedImage;
  }

  bool _storedImageIsInitialized = false;

  @override
  set storedImage(File value) {
    _$storedImageAtom.reportWrite(
        value, _storedImageIsInitialized ? super.storedImage : null, () {
      super.storedImage = value;
      _storedImageIsInitialized = true;
    });
  }

  late final _$takePictureAsyncAction =
      AsyncAction('_AddLocation.takePicture', context: context);

  @override
  Future takePicture() {
    return _$takePictureAsyncAction.run(() => super.takePicture());
  }

  @override
  String toString() {
    return '''
storedImage: ${storedImage}
    ''';
  }
}
