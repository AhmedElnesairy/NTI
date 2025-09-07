import 'package:flutter/material.dart';
import 'package:task2/features/widget.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WatsApp',
          style: TextStyle(
            color: Color(0xFF1dac66),
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFf6f5f3),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 50,
                width: 380,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Icon(Icons.search),
                    ),
                    Text('  Ask Meta Al or Search'),
                  ],
                ),
              ),
            ),
            ChatCard(
              name: "Elnesairy",
              message: "hi",
              image:
                  "assets/images/1.png",
              time: "05:22",
            ),
            ChatCard(
              name: "Fares",
              message: "Rodri 3mk ",
              image:
                  "assets/images/2.png",
              time: "04:30",
            ),
            ChatCard(
              name: "Ibrahim",
              message: "hello!",
              image:
                  "assets/images/3.png",
              time: "04:50",
            ),
            ChatCard(
              name: "Hassan",
              message: "how are you ?",
              image:
                  "assets/images/4.png",
              time: "01:40",
            ),
            ChatCard(
              name: "Hegazy",
              message: "salam",
              image:
                  "assets/images/5.png",
              time: "09:25",
            ),
            ChatCard(
              name: "yousef",
              message: "a5ooya",
              image:
                  "assets/images/6.png",
              time: "05:20",
            ),
            ChatCard(
              name: "Mady",
              message: "good morning",
              image:
                  "assets/images/7.png",
              time: "02:50",
            ),
            ChatCard(
              name: "Eslam",
              message: "sa7by",
              image:
                  "assets/images/8.png",
              time: "07:35",
            ),
            ChatCard(
              name: "Mahmoud",
              message: "fantasy",
              image:
                  "assets/images/9.png",
              time: "04:00",
            ),
            ChatCard(
              name: "Mohammed",
              message: "Holla!",
              image:
                  "assets/images/10.png",
              time: "today",
            ),


          ],
        ),
      ),
    );
  }
}
