import 'package:app1/features/home/model/pizza_model.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key, required this.list});
  final List<PizzaModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final pizza = list[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PizzaDetailsPage(pizza: pizza),
              ),
            );
          },
          child: Card(
            color: Colors.orange,
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                  pizza.image,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Text(
                  pizza.name ?? "Pizza",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        );
      },
    );
  }
}
