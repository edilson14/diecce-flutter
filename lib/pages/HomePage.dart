import 'package:flutter/material.dart';

import './DiecePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dados'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    );
  }
}
