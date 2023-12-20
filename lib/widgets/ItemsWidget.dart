import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // esto habiilita el scroll vertical
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        // este for muestra las 8 cards recordar el $para mostrar las images en i
        for (int i = 1; i < 8; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 62, 62, 62),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 52, 1, 61),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text("-50",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.amber,
                    )
                  ],
                ),
                ////////////////////////////////
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itemPage");
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.png",
                      width: 160,
                      height: 160,
                    ),
                  ),
                ),
                /////////////////////////////////
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "buzos deluxe",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    " hoodies personalizados, 100% algodon",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.amber,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$155.000",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.amber,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
