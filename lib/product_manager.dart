import 'package:flutter/material.dart';

import './products.dart';
class ProductManger extends StatefulWidget {
  final String startingProducts;

  ProductManger(this.startingProducts);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManger> {
  List<String> _products = [];
  
  @override
  void initState() {
    _products.add(widget.startingProducts);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
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
    Products(_products)
    ],); 
  }
}
