class BannnerModel {
  final String title;
  final String url;

  BannnerModel({this.title, this.url});

  factory BannnerModel.fromJson(Map<String, dynamic> json) {
    return BannnerModel(title: json['title'], url: json['url']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = title;
    data['url'] = url;

    return data;
  }
}
