



import 'package:collabworkx/models/digital_spaces.dart';
import 'package:collabworkx/utils/fakedata.dart';

class DigitalSpacesRequest {
  Future getDigitalSpaces() async {
   

    Iterable jsonResponse = digitalSpaces;
    List<DigitalSpace> spaces = List<DigitalSpace>.from(
        jsonResponse.map((model) => DigitalSpace.fromJson(model)));
    
    return spaces;
  }

  Future getMySpaces() async {
   

    Iterable jsonResponse =myDigitalSpaces;
    List<DigitalSpace> spaces = List<DigitalSpace>.from(
        jsonResponse.map((model) => DigitalSpace.fromJson(model)));
    
    return spaces;
  }


}
