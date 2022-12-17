import 'package:newproject/models/product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  CartItem copy() => CartItem(product: product, quantity: quantity);
}
