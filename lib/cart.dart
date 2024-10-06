import 'package:flutter/cupertino.dart';
import 'package:shopping_app/shoe.dart';

class Cart extends ChangeNotifier {
//   list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordans',
        price: '24999',
        imagePath: 'images/sho_1.png',
        discription:
            'The Air Jordan remakes the classic sneaker with new colors and textures.'
            ' Premium materials and accents give fresh expression to an all-time favorite.'),
    Shoe(
        name: 'Zoom Freak',
        price: '26999',
        imagePath: 'images/sho_2.png',
        discription:
            'Designed to give you the most responsive feel, the Kobe VIII Protro continues that legacy by'
            ' keeping an engineered mesh upper that molds to your foot and a traction pad that provides extra security. '),
    Shoe(
        name: 'Tatum 3',
        price: '39999',
        imagePath: 'images/sho_3.png',
        discription:
            'Growing anything takes serious work—work that builds expectations. And there\'s no greater pressure than your own expectations.'
            ' But if you\'re anything like Jayson, it\'s always worth tending to the things you love: your family, your game, your legacy.'),
    Shoe(
        name: 'Nike Air Max',
        price: '44999',
        imagePath: 'images/sho_4.png',
        discription:
            'Nike\'s first lifestyle Air Max brings you style, comfort and big attitude in the Nike Air Max 270. The design draws inspiration from Air Max icons, showcasing Nike\'s greatest innovation with its large window and fresh array of colors.'),
  ];

//list of item in user cart
  List<Shoe> userCart = [];

// get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
