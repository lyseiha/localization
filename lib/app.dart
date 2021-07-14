import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("hello".tr().toString()),
            SizedBox(height: 16.0),
            FlatButton(
              child: Text("Change to ខ្មែរ"),
              onPressed: () {
                // context.locale = Locale('km', "KM");
                EasyLocalization.of(context).locale = Locale('km', "KM");
              },
            ),
            SizedBox(height: 16.0),
            FlatButton(
              child: Text("Change to English"),
              onPressed: () {
                // context.locale = Locale('en', "EN");
                EasyLocalization.of(context).locale = Locale('en', "EN");
              },
            ),
          ],
        ),
      ),
    );
  }
}
