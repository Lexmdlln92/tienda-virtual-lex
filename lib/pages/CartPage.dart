import 'package:flutter/material.dart';
import 'package:shoplex/widgets/CartAppBar.dart';
import 'package:shoplex/widgets/CartBottomNavBar.dart';
import 'package:shoplex/widgets/CartItemSamples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            //tempory height contenedor temporal
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 11, 0, 13),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                const CartItemSamples(),
                Container(
                  //decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: const EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "add Coupon code",
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}
