part of am.models;

class ExampleModel {
  int id;
  String name;

  ExampleModel({@required this.id, @required this.name});

  ExampleModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
