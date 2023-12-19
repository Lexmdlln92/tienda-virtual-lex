import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 52, 1, 61),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // vuelve a la pantalla/página anterior
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.amber,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
