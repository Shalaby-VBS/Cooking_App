import 'package:app_cooging/core/helpers/spaces.dart';
import 'package:app_cooging/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 236, 252),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/freepik-export-20241112150200Eghd.png", //TODO: حطي الصور كلها في ملف AppAssets في الـ Constants.
              height: 400,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Spaces.vertical(40),
            Padding(
              padding: const EdgeInsets.only(
                  left:
                      40), //TODO: خليه بالعرضين أو بالطولين أحسن عشان لو الأب اتقلب انجليزي وعربي.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Grab your\nDelicius food !",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spaces.vertical(20),
                  const Text("Delivery food in your phone"),
                  Spaces.vertical(20),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: ElevatedButton(
                      //TODO: لو ده الشكل العام للزرار حطيه في ويدجت منفصله واستعمليه في كل الابلكيشن
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 171, 230, 253),
                        minimumSize: const Size(400, 50),
                      ),
                      child: const Text(
                        "Get started",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
