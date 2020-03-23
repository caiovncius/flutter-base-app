part of am.helpers;

/// Get Provider helper
typedef ChangeNotifier Bloc<T>(BuildContext context);

T bloc<T extends ChangeNotifier>(BuildContext context) => Provider.of<T>(context);

/// Run app
typedef MaterialApp ExecApp(BuildContext context, String title);

MaterialApp execApp(BuildContext context, String title) {
  return MaterialApp(
    title: title,
    debugShowCheckedModeBanner: false,
    initialRoute: bloc<AppBloc>(context).initialRoute,
    routes: bloc<AppBloc>(context).getRoutes(),
  );
}
