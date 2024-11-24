import 'package:flutter/material.dart';

class TypesFoodCategory extends StatelessWidget {
  const TypesFoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> foodItemsData = [
      {
        "image": "assets/images/freepik-export-20241112150200Eghd.png",
        "text": "Food "
      },
      {
        "image": "assets/images/freepik-export-20241112150200Eghd.png",
        "text": "Food "
      },
      {
        "image": "assets/images/freepik-export-20241112150200Eghd.png",
        "text": "Food "
      },
      {
        "image": "assets/images/freepik-export-20241112150200Eghd.png",
        "text": "Food "
      },
      {
        "image": "assets/images/freepik-export-20241112150200Eghd.png",
        "text": "Food "
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var food in foodItemsData)
            Column(
              children: [
                Card.outlined(
                  color: const Color.fromARGB(255, 209, 230, 247),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 209, 230, 247),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                        food["image"]!), //TODO: أي صورة أديها طول وحجم مناسب
                  ),
                ),
                Text(food["text"]!), //TODO: متستعمليش الـ ! خالص لو سمحتي.
              ],
            ),
        ],
      ),
    );
  }
}
