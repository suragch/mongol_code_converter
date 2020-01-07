import 'package:flutter/material.dart';
import 'package:mongol_code_converter/service_locator.dart';

import 'ui/converter_page.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mongol Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ConverterPage(),
      ),
    );
  }
}

