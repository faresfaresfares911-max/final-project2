import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Zahra")),
      body: Center(
        child: Text(
          "Zahra Flower Shop is your go-to destination for fresh, beautiful flowers. We offer a wide variety of blooms for every occasion, from birthdays to weddings. Our mission is to bring joy and beauty into your life with our carefully curated selection of flowers. Thank you for choosing Zahra!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
