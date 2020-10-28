import 'package:flutter/material.dart';
import '../routes.dart';
import '../constants.dart';
import 'package:easy_localization/easy_localization.dart';

class MainComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: KLightTheme,
      initialRoute: 'splash',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
