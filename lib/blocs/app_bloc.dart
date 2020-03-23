part of am.blocs;

class AppBloc extends ChangeNotifier {
  /// Initial route
  String _initialRoute = RoutesPath.HOME;

  /// Get initial router
  String get initialRoute => _initialRoute;

  /// All app routes
  Map<String, WidgetBuilder> _routes = routes;

  /// Get all routes
  Map<String, WidgetBuilder> getRoutes() => _routes;

  /// Example attribute
  String _example = 'Example';

  /// Example get attribute
  String get example => _example;

  /// Example set attribute
  void setExample(String example) {
    _example = example;
    notifyListeners();
  }

  /// Example bloc function
  String getConcatenate(String concat) => "${_example} = ${concat}";
}
