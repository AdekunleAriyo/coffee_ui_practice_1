import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile(
      {super.key,
      required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeePrice});

  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeeImagePath),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'With Almond milk',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$' + coffeePrice,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
