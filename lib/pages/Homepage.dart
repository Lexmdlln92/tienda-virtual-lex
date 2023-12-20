import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoplex/widgets/CategoriesWidget.dart';
import 'package:shoplex/widgets/HomeAppBar.dart';
import 'package:shoplex/widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            // temporal height
            //height: 500,
            // color del bg
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 11, 0, 16),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 162, 161, 162),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(children: [
                    // inicio buscador
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: "Buscar ..."),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.amber,
                    )
                  ]),
                ),
                // fin buscador
                // categorias
                Container(
                  //alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ),

                // categories widget
                const CategoriesWidget(),

                // Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ),

                // Items widget
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      ///////////// navbar inferior //////////////
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 58, 58, 58),
        onTap: (index) {},
        color: Color.fromARGB(255, 13, 0, 15),
        height: 70,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.amber,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.amber,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.amber,
          ),
        ],
      ),
      ///////////// navbar inferior //////////////
    );
  }
}
