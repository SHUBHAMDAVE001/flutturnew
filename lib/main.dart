import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food tester'];
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Kashi yani banaras Yatra'),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                    _products.add('AFT');  
                    });
                  },
                  child: Text('add picture'),
                ),
              ),
              Column(
                  children: _products
                      .map((element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/shubham_new_img.jpg'),
                                Text('Paradise')
                              ],
                            ),
                          ))
                      .toList()
                    ),
            ],
          )),
    );
  }
}
