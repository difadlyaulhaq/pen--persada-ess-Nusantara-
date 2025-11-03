import 'package:flutter/material.dart';
import 'package:pen/data/model/User.dart';
import 'package:pen/ui/theme/theme.dart';
import 'package:pen/ui/widget/statistical_card.dart';
import 'package:pen/ui/widget/graphic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    String nama = "User";
    return Scaffold(
      backgroundColor: lightGray,
      appBar: AppBar(
        backgroundColor: lightGray,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/man.png', width: 40, height: 40),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, $nama 👋", style: headingStyle.copyWith(fontSize: 16)),
            Text(
              "Welcome back PEN",
              style: subheadingStyle.copyWith(fontSize: 12),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12, top: 8, bottom: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined, color: black),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const StatisticalCard(
                        title: 'Total order',
                        icon: Icon(Icons.shopping_cart, color: Colors.blue),
                        numericData: '234',
                        cardColor: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      const StatisticalCard(
                        title: 'Diproduksi',
                        icon: Icon(Icons.settings, color: amber),
                        numericData: '23',
                        cardColor: white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const StatisticalCard(
                        title: 'Dikirim',
                        icon: Icon(Icons.local_shipping, color: green),
                        numericData: '234',
                        cardColor: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      const StatisticalCard(
                        title: 'Pesanan Selesai',
                        icon: Icon(Icons.check_circle, color: purple),
                        numericData: '1000',
                        cardColor: white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const GraphicalCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}