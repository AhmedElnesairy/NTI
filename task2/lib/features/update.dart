import 'package:flutter/material.dart';
import 'package:task2/features/update1.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF1dac66),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            UpdateCard(
              name: "Elnesairy",
              image:
                "assets/images/1.png",
            ),
            UpdateCard(
              name: "Ahmed",
              image:
                "assets/images/2.png",
            ),
            UpdateCard(
              name: "Mady",
              image:
                "assets/images/3.png",
            ),
            UpdateCard(
              name: "fares",
              image:
                "assets/images/10.png",
            ),
            UpdateCard(
              name: "Ibrahim",
              image:
                "assets/images/5.png",
            ),
            UpdateCard(
              name: "Hassan",
              image:
                "assets/images/6.png",
            ),
            UpdateCard(
              name: "Yousef",
              image:
                "assets/images/9.png",
            ),
            UpdateCard(
              name: "Eslam",
              image:
                "assets/images/4.png",
            ),
            UpdateCard(
              name: "Hegazy",
              image:
                "assets/images/1.png",
            ),
            UpdateCard(
              name: "Mohammed",
              image:
                "assets/images/7.png",
            ),
            UpdateCard(
              name: "Mahmoud",
              image:
                "assets/images/8.png",
            ),
          ],
        ),
      ),
    );
  }
}
