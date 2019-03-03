import 'package:flutter/material.dart';
import 'package:flutter_kaddu_seller/src/items_listing_screen.dart';

class KadduSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemsListingScreen(),
    );
  }
}
