import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map data;
  DetailsScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data["name"])),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(data["image"], height: 200, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text("Prep Time: ${data["prepTimeMinutes"]} mins", style: TextStyle(fontSize: 16)),
            SizedBox(height: 12),
            Text("Instructions:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(data["instructions"], style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}