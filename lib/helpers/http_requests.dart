part of am.helpers;

/// POST request helper
typedef Future<http.Response> PostRequest(String path, dynamic data, {Map<String, dynamic> headers});

Future<http.Response> postRequest(String path, dynamic data, {Map<String, dynamic> headers}) async {
  http.Response response =
      await HttpService.instance().request(HttpRequestType.POST, path, body: data, headers: headers);
  return response;
}

/// PUT request helper
typedef Future<http.Response> PutRequest(String path, dynamic data, {Map<String, dynamic> headers});

Future<http.Response> putRequest(String path, dynamic data, {Map<String, dynamic> headers}) async {
  http.Response response =
      await HttpService.instance().request(HttpRequestType.PUT, path, body: data, headers: headers);
  return response;
}

/// PATCH request helper
typedef Future<http.Response> PatchRequest(String path, dynamic data, {Map<String, dynamic> headers});

Future<http.Response> patchRequest(String path, dynamic data, {Map<String, dynamic> headers}) async {
  http.Response response =
      await HttpService.instance().request(HttpRequestType.PATCH, path, body: data, headers: headers);
  return response;
}

/// GET request helper
typedef Future<http.Response> GetRequest(String path, dynamic data, {Map<String, dynamic> headers});

Future<http.Response> getRequest(String path, {Map<String, dynamic> headers}) async {
  http.Response response = await HttpService.instance().request(HttpRequestType.GET, path, headers: headers);
  return response;
}
