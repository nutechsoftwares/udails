import 'package:flutter/material.dart';
import 'components/main.dart';
import 'package:easy_localization/easy_localization.dart';

void main() => runApp(
      EasyLocalization(
          supportedLocales: [
            Locale('en', 'US'),
            Locale('mr', 'IN'),
            Locale('hi', 'IN')
          ],
          path: 'assets', // <-- change patch to your
          fallbackLocale: Locale('hi', 'IN'),
          child: MyApp()),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MainComponent();
  }
}
