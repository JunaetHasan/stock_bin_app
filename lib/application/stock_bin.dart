import 'package:flutter/material.dart';
import 'package:stock_bin/ui/screens/home_screen.dart';

class StockBin extends StatelessWidget {
  const StockBin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stock Bin",
      home: HomeScreen(),
    );
  }
}
