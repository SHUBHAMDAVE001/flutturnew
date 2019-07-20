import 'package:flutter/material.dart';

import './product_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kashi yani banaras Yatra'),
        ),
        body: ProductManger('Shubham photo'),
      ),
    );
  }
}
