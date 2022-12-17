import 'package:get/get.dart';

import '../models/cart_item.dart';

class CartController extends GetxController {
  var _total = 0.obs;
  final _cart = <CartItem>[].obs;

  int get total => _total.value;
  List<CartItem> get cart => _cart.value.map((e) => e.copy()).toList(); 

  void addToCart(CartItem cartItem) {
    _cart.add(cartItem);
    _total += (cartItem.product.price * cartItem.quantity);
  }

  void removeFromCart(CartItem cartItem) {
    _cart.removeWhere((e) => e.product.id == cartItem.product.id);
    _total -= cartItem.product.price * cartItem.quantity;
  }

  void quantityPlus(CartItem cartItem) {
    _cart.firstWhere((e) => cartItem.product.id == e.product.id).quantity++;
    _total += cartItem.product.price;
  }

  void quantityMinus(CartItem cartItem) {
    _cart.firstWhere((e) => cartItem.product.id == e.product.id).quantity--;
    _total -= cartItem.product.price;
  }
}
