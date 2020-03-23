part of am.blocs;

class BaseBloc {
  static BaseBloc _instance;

  static BuildContext _context;

  static ChangeNotifier of<T extends ChangeNotifier>(BuildContext context) {
    _instance ??= new BaseBloc();
    _context = context;
    return Provider.of<T>(context);
  }
}
