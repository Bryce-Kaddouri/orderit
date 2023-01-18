import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return a container with 2 columns and 2 rows inside it with a rectangle shape and a border radius of 20 and a color of white and a shadow of 5 and a padding of 20 and a margin of 20
    return Container(
      // background color of the container #f2efeb
      color: const Color(0xFFF2EFEB),
      child: GridView.count(
        padding: const EdgeInsets.all(7),

        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(4, (index) {
          // return a container with a rectangle shape and a border radius of 20 and a color of white and a shadow of 5 and a padding of 20 and a margin of 20 and a gesture detector with a onTap function that will navigate to the product page

          return Container(
            margin: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
