part of am.services;

class HttpService {
  /// HttpService Singleton instance
  static HttpService _instance;

  /// Build context
  static BuildContext _context;

  String _apiBaseUrl;

  /// Create a http service singleton
  static HttpService instance({BuildContext context}) {
    _instance ??= new HttpService();
    _context = context;
    return _instance;
  }

  /// Define api base url
  HttpService setBaseUrl(String url) {
    _instance._apiBaseUrl = url;
    return _instance;
  }

  Future<http.Response> request(HttpRequestType type, String path, {dynamic body, Map<String, dynamic> headers}) async {
    try {
      switch (type) {
        case HttpRequestType.POST:
          return await http.post("$_apiBaseUrl/$path", body: body, headers: headers);
          break;
        case HttpRequestType.PUT:
          return await http.put("$_apiBaseUrl/$path", body: body, headers: headers);
          break;
        case HttpRequestType.PATCH:
          return await http.patch("$_apiBaseUrl/$path", body: body, headers: headers);
          break;
        case HttpRequestType.DELETE:
          return await http.delete("$_apiBaseUrl/$path", headers: headers);
          break;
        default:
          return await http.get("$_apiBaseUrl/$path", headers: headers);
          break;
      }
    } on Exception catch (e) {
      print(e);
    }
  }
}
