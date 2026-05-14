import 'package:flutter/material.dart';

import 'features/plants/presentation/plants_screen.dart';

void main() {
  runApp(const PlantsApp());
}

class PlantsApp extends StatelessWidget {
  const PlantsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlantsScreen(),
    );
  }
}