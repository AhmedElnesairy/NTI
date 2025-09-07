import 'package:flutter/material.dart';
import 'package:task3/features/home/recipes.dart';
import 'details.dart';


class HomeScreen extends StatelessWidget {
  final ApiService api = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🍽️ Recipes"), centerTitle: true),
      body: FutureBuilder<List<dynamic>>(
        future: api.fetchRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          if (snapshot.hasError)
            return Center(child: Text("Error: ${snapshot.error}"));
          if (!snapshot.hasData || snapshot.data!.isEmpty)
            return Center(child: Text("No recipes found"));

          final list = snapshot.data!;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item["image"]),
                  radius: 30,
                ),
                title: Text(item["name"]),
                subtitle: Text("${item["prepTimeMinutes"]} mins"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailsScreen(data: item),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}