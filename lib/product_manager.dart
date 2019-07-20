import 'package:flutter/material.dart';

import './products.dart';

class ProductManger extends StatefulWidget {
  final String startingProducts;

  ProductManger(this.startingProducts){
  print('[ProductManager Widget] constructor');    
  }
  
  @override
  State<StatefulWidget> createState() {
  print('[ProductManager Widget] create state');    
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManger> {
  List<String> _products = [];
  
  @override
  void initState() {
    print('[ProductManager State] initState');    

    // print('init state');
    _products.add(widget.startingProducts);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build');    
    return Column(children: [
      Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
            _products.add('AFT');
          });
        },
        child: Text('add picture'),
      ),
    ),
    Products(_products)
    ],
    ); 
  }
}
