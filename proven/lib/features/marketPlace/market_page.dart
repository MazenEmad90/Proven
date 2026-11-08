import 'package:flutter/material.dart';
import 'package:proven/core/theme/colors.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: AppColors.brandNavy),
              width: 500,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
