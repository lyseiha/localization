import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:translation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [Locale('en', "EN"), Locale('km', "KM")],
      saveLocale: true,
      path: 'resources/langs',
      // fallbackLocale: Locale('en', "EN"),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: MyHomePage(),
    );
  }
}
