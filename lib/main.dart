import 'package:architeture_model/blocs/main.dart';
import 'package:architeture_model/helpers/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<AppBloc>(
      create: (_) => AppBloc(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => execApp(context, 'Flutter App Model');
}
