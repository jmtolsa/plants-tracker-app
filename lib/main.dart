import 'package:flutter/material.dart';

import 'features/my_plants/presentation/my_plants_screen.dart';
import 'features/plants/presentation/plants_app_screen.dart';
void main() {
  runApp(const PlantsApp());
}

class PlantsApp extends StatelessWidget {
  const PlantsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: PlantsScreen(),
      //home: MyPlantsScreen(),
      home: PlantsAppScreen(),
    );
  }
}