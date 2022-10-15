import 'dart:convert';

DigitalSpace digitalSpacesFromJson(String str) =>
    DigitalSpace.fromJson(json.decode(str));

class DigitalSpace {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  DigitalSpace(
      {this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  DigitalSpace.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['albumId'] = albumId;
    data['id'] = id;
    data['title'] = title;
    data['url'] = url;
    data['thumbnailUrl'] = thumbnailUrl;
    return data;
  }
}
