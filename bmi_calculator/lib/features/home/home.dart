import 'package:flutter/material.dart';

import '../../second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 89, left: 50, right: 50),
            child: Row(
              children: [
                const Text(
                  "       BMI ",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Calculator",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 40, right: 50, bottom: 30),
            child: Text(
              "Please choose your gender",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Male";
              });
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: selectedGender == "Male"
                    ? const Color(0xffc1fbf3)
                    : Colors.grey[200],
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  const Text(
                    'Male',
                    style: TextStyle(
                      color: Color(0xff519234),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/img.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "Female";
              });
            },
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: selectedGender == "Female"
                    ? const Color(0xfffad8e8)
                    : Colors.grey[200],
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  const Text(
                    'Female',
                    style: TextStyle(
                      color: Color(0xff519234),
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/img.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff65b741),
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              onPressed: () {
                if (selectedGender.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SecondPage(gender: selectedGender),
                    ),
                  );
                }
              },
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
