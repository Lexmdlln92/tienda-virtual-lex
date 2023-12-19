import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoplex/widgets/ItemAppBar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:shoplex/widgets/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  List<Color> Clrs = [
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 52, 1, 61),
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset("images/1.png", height: 300),
          ),
          //// package clippy_flutter arco de la card .
          Arc(
            arcType: ArcType.CONVEY,
            edge: Edge.TOP,
            height: 35,
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Product Tittle",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        /// corazones puntuacion del producto
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            maxRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 30,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,
                              color: Color.fromARGB(255, 52, 1, 61),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              // boton -
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 52, 1, 61),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      )
                                    ]),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                  color: Colors.amber,
                                ),
                              ),
                              // nimero en medio de los botones
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // boton +
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 52, 1, 61),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      )
                                    ]),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // text description //////////////////////////////////////////////////////////////////////////
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 9),
                      child: Text(
                        "this is more detailed description of the product. you can write here more about the product. this is lengthy description.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    /// size tallas de zapatos
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Size:",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        )
                                      ]),
                                  child: Text(
                                    i.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /// color tallas de zapatos
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          const Text(
                            "Color:",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          /*colores disponibles  */ ///////////////////////////////
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Clrs[i],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  255, 25, 0, 0)
                                              .withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        )
                                      ]),
                                ),
                            ],
                          ),
                          ////////////////////////////////////////////////////////////////
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      /*botton appbar*/
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
