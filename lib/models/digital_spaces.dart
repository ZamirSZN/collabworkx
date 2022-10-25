import 'dart:convert';

DigitalSpace digitalSpacesFromJson(String str) =>
    DigitalSpace.fromJson(json.decode(str));

class DigitalSpace {
  String? spaceTitle;
  String? spaceDescription;
  String? spaceIndustry;
  String? spaceImage;


  DigitalSpace(
      {this.spaceTitle, this.spaceDescription, this.spaceIndustry, this.spaceImage,});

  DigitalSpace.fromJson(Map<String, dynamic> json) {
    spaceTitle = json['spaceTitle'];
    spaceDescription = json['spaceDescription'];
    spaceIndustry = json['spaceIndustry'];
    spaceImage = json['spaceImage'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['spaceTitle'] = spaceTitle;
    data['spaceDescription'] = spaceDescription;
    data['spaceIndustry'] = spaceIndustry;
    data['spaceImage'] = spaceImage;
   
    return data;
  }
}
