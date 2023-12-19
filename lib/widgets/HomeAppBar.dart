import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color del el navbar
      color: const Color.fromARGB(255, 53, 4, 69),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 40,
            color: Colors.amber,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "LEX Shop",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
            ),
            position: badges.BadgePosition.topEnd(top: -14),
            badgeContent: const Text(
              '10',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.amber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
