import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart.dart';
import 'package:shopping_app/cart_item.dart';
import 'package:shopping_app/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: Colors.blue.shade200,
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // heading
                    const Text(
                      'My Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.getUserCart().length,
                            itemBuilder: (context, index) {
                      //   get indivitual shoe
                      Shoe indivitualShoe = value.getUserCart()[index];

                      //   return the cart item
                      return CartItem(
                        shoe: indivitualShoe,
                      );
                    })),
                  ],
                ),
              ),
            ));
  }
}
