import 'package:code_with_andrea_flutter/src/constants/app_text_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // TODO: Save this as breakpoint
      final isDesktop = constraints.maxWidth > 834;
      final textTheme = isDesktop ? DesktopTextTheme() : MobileTextTheme();
      return MaterialApp(
        title: 'Code With Andrea',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              headline1: textTheme.h1,
              headline2: textTheme.h2,
              headline3: textTheme.h3,
              headline4: textTheme.h4,
              headline5: textTheme.h5,
              headline6: textTheme.h6,
              subtitle1: textTheme.subtitle1,
              subtitle2: textTheme.subtitle2,
              bodyText1: textTheme.body,
              button: textTheme.button,
            )),
        home: Container(),
      );
    });
  }
}
