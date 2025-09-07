import 'package:flutter/material.dart';
import '../../model/pizza_model.dart';

class PizzaDetailsPage extends StatelessWidget {
  final PizzaModel pizza;

  const PizzaDetailsPage({super.key, required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pizza.name ?? "Pizza Details"),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (pizza.image != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(pizza.image!),
                ),
              const SizedBox(height: 20),
              Text(
                "Ingredients:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...pizza.ingredients.map(
                    (ing) => ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text(ing),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => IngredientDetailsPage(ingredient: ing),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Instructions:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: pizza.instructions
                    .asMap()
                    .entries
                    .map(
                      (entry) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "${entry.key + 1}- ${entry.value}",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IngredientDetailsPage extends StatelessWidget {
  final String ingredient;

  const IngredientDetailsPage({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingredient Details"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Text(
          "Details for: $ingredient",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
