part of highcharts4dart;


Map addMapValue (Map map, String key, dynamic value) {
  if (value != null) {
    if (value is ToMap) {
      map [key] = value.toMap();
    }
    else if (value is Iterable) {
      List newList = new List ();
      for (var item in value) {
        newList.add(item is ToMap ? item.toMap() : item);
      }
      map [key] = new JsObject.jsify(newList);
    }
    else if (value is Function) {
      map [key] = new JsFunction.withThis(value);
    }
    else {
      map [key] = value;
    }
  }
  return map;
}