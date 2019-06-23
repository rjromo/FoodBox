import 'package:flutter/material.dart';


import 'package:food_box/product_control.dart';
import './products.dart';


class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  void _addProduct(String product){
    setState(() {
            _products.add(product);
          });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
