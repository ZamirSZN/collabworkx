import 'dart:convert';

import 'package:collabworkx/models/digital_spaces.dart';
import 'package:http/http.dart' as http;

class DigitalSpacesRequest {
  Future getDigitalSpaces() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1/photos"));

    Iterable jsonResponse = json.decode(response.body);
    List<DigitalSpace> spaces = List<DigitalSpace>.from(
        jsonResponse.map((model) => DigitalSpace.fromJson(model)));
    print(spaces);
    return spaces;
  }
}
