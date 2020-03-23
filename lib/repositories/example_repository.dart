part of am.repositories;

class ExampleRepository {
  /// Example repository path. Not required
  static final String PATH = '/example-path';

  /// Example to load model entity
  static Future<ExampleModel> getExampleModel(int id) async {
    String url = "$PATH/$id/details";
    http.Response response = await getRequest(url);
    return ExampleModel.fromJson(jsonDecode(response.body));
  }
}
