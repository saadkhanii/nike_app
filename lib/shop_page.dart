import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/cart.dart';
import 'package:shopping_app/shoe.dart';
import 'package:shopping_app/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added!'),
              content: Text('Check your cart!'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: Colors.blue.shade200,
              body: Column(
                children: [

                  // search bar
                  Container(
                      padding:const EdgeInsets.all(12),
                      margin:const EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Search'), Icon(Icons.search)],
                      )),

                  // slogan
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      'everyone flies.. some fly longer than others',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),

                  // hot picks title
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hot Picks 🔥',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('see all')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // ** ListView for shoes **
                  Expanded(
                    child: ListView.builder(
                      padding:const EdgeInsets.only(left: 10,right: 10,),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // get shoe from list
                          Shoe shoe = value.getShoeList()[index];
                          return ShoeTile(
                            shoe: shoe,
                            onTap: () => addShoeToCart(shoe),
                          );
                        }),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25.0,),
                    child: Divider(
                      color: Colors.blue.shade200,
                    ),
                  ),
                ],
              ),
            ));
  }
}
