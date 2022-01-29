import 'package:alvin_mock_app/config/AppRoute.dart';
import 'package:alvin_mock_app/config/Palette.dart';
import 'package:alvin_mock_app/config/ServiceLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home/HomePage.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Breeds',
      navigatorKey: locator!<AppRoute>().navigatorKey,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          color: Palette.primaryColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}
