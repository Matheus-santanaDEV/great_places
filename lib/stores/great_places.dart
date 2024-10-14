import 'package:great_places/models/places.dart';
import 'package:mobx/mobx.dart';
part 'great_places.g.dart';

class GreatPlaces = _GreatPlaces with _$GreatPlaces;

abstract class _GreatPlaces with Store {

 final ObservableList<Places> _items = ObservableList.of([]);

  ObservableList<Places> get  items{
  return [..._items];

}

}