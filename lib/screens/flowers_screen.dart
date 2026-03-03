import 'package:flutter/material.dart';

class FlowersScreen extends StatelessWidget {
  final List<Map<String, String?>> flowers = [
    {
      "name": "White Bouquet",
      "price": "500 SAR",
      "image": "assets/images/im1.jpg",
    },

    {
      "name": "Red Bouquet",
      "price": "300 SAR",
      "image": "assets/images/im3.jpg",
    },
    {
      "name": "Pink Bouquet",
      "price": "800 SAR",
      "image": "assets/images/im2.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flowers 🌸")),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemCount: flowers.length,
        itemBuilder: (context, index) {
          final flower = flowers[index];

          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    child: Image.asset(
                      flower["image"]!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  flower["name"]!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(flower["price"]!),
                SizedBox(height: 8),
              ],
            ),
          );
        },
      ),
    );
  }
}
