import 'package:animated_text/blocs/theme.dart';
import 'package:flutter/material.dart';
import './home.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_)=>ThemeChanger(ThemeData.dark()),
      
          child: new MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
        final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
        home: HomePage(),
        theme: theme.getTheme(),
      );
  }
}