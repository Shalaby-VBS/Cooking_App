import 'package:app_cooging/core/helpers/spaces.dart';
import 'package:app_cooging/features/splash/splash_screen.dart';
import 'package:app_cooging/features/home/ui/widgets/types_food_category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 217, 236, 252), //TODO: حطي كل الألوان في الـ AppColors.
      appBar: AppBar(
        //TODO: افصلي الـ AppBar في ملف خاص.
        backgroundColor: const Color.fromARGB(255, 217, 236, 252),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SplashScreen()));
          },
          icon: Container(
            height: 30, //TODO: استعملي flutter_screenUtil.
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(97, 205, 201, 201),
            ),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.card_giftcard))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Let's finds the best \n food around you ",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight
                      .bold), //TODO: حطي كل الستايل في ملف خاص في الـ Themes.
            ),
          ),
          Spaces.vertical(35),
          const Padding(
            padding: EdgeInsets.all(9.0),
            child: Row(
              children: [
                Text(
                  "Find by Category",
                  style: TextStyle(fontSize: 15),
                ),
                Spacer(),
                Text(
                  //TODO: Make it TextButton.
                  "See All",
                  style: TextStyle(color: Color.fromARGB(255, 201, 155, 19)),
                ),
              ],
            ),
          ),
          const TypesFoodCategory(),
        ],
      ),
    );
  }
}
