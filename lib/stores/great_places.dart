import 'package:great_places/models/places.dart';
import 'package:mobx/mobx.dart';
part 'great_places.g.dart';

class GreatPlaces = _GreatPlaces with _$GreatPlaces;

abstract class _GreatPlaces with Store {
  final ObservableList<Places> _items = ObservableList.of([]);



  ObservableList<Places> get items {
    return ObservableList<Places>.of(_items);
  }

  @action
  int itemCount() {
    return items.length;
  }

  @action 
  Places itemByIndex(int index){
    return _items[index];
  }



}
