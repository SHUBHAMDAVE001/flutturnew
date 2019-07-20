import 'package:flutter/material.dart';

class Products extends StatelessWidget {
final List<String> products;

Products(this.products){
  print(this.products);
  print('[Products Widget] Shubham image');
}

  @override
  Widget build(BuildContext context) {
  print('[Products Widget] build @@@@@@@@@@@');
    return Column(
        children: products
            .map(
              (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/shubham_new_img.jpg'),
                      Text('Paradise')
                    ],
                  ),
                ),
              )
            .toList());
  }
}
