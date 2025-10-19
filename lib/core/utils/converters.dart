import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

// This converter handles a JSON-encoded string (e.g., "[0,1,2]")
class JsonStringToIntListConverter implements JsonConverter<List<int>, String> {
  const JsonStringToIntListConverter();

  // Converts the String from the database to a List<int>
  @override
  List<int> fromJson(String json) {
    if (json.isEmpty) {
      return [];
    }
    // Use jsonDecode to parse the string into a List<dynamic>
    final List<dynamic> listDynamic = jsonDecode(json) as List;

    // Convert the List<dynamic> to a List<int>
    return listDynamic.map((e) => e as int).toList();
  }

  // Converts the List<int> from your model back to a String (e.g., "1,2,3")
  @override
  String toJson(List<int> object) {
    return object.join(','); // Join all items with a comma
  }
}

// This converter handles an integer (0 or 1) and turns it into a bool
class BoolToIntConverter implements JsonConverter<bool, int> {
  const BoolToIntConverter();

  // Converts the int from the database (e.g., 1) to a bool (true)
  @override
  bool fromJson(int json) {
    return json == 1;
  }

  // Converts the bool from your model (e.g., true) back to an int (1)
  @override
  int toJson(bool object) {
    return object ? 1 : 0;
  }
}
