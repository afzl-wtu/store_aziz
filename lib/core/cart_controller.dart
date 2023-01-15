import 'package:get/get.dart';

import '../models/cart_item.dart';

class CartController extends GetxController {
  var _total = 0.obs;
  final _cart = <CartItem>[].obs;

  int get total => _total.value;
  List<CartItem> get cart => _cart.value.map((e) => e.copy()).toList();

  void addToCart(CartItem cartItem) {
    //First Check if Item is already in Cart.
    var index = _cart.indexWhere((e) => cartItem.product.id == e.product.id);
    if (index == -1) {
      //If Index is -1. It means item is not already in cart so new Item will be added.
      _cart.add(cartItem);
    } else {
      //Means Element is already in Cart. So only Quantity will be cahnge.
      _cart[index].quantity += cartItem.quantity;
    }
    _total += (cartItem.product.price * cartItem.quantity);
  }

  void removeFromCart(CartItem cartItem) {
    //Find the Index of element to Remove
    var index = _cart.indexWhere((e) => cartItem.product.id == e.product.id);
    //First Check if Item has Quantity greater than 1.
    if (_cart[index].quantity > 1 && cartItem.quantity == 1) {
      //Reduce Quantity by 1.
      _cart[index].quantity--;
    } else {
      //Otherwise Delete full Item
      _cart.removeWhere((e) => e.product.id == cartItem.product.id);
    }
    _total -= cartItem.product.price * cartItem.quantity;
  }
}
