import 'package:flutter/material.dart';

import '../../my_plants/presentation/my_plants_screen.dart';
import 'plants_screen.dart';
import '../../my_plants/domain/my_plant.dart';
import '../../my_plants/presentation/my_plants_list_screen.dart';

class PlantsAppScreen extends StatefulWidget {
  const PlantsAppScreen({super.key});

  @override
  State<PlantsAppScreen> createState() => _PlantsAppScreenState();
}

class _PlantsAppScreenState extends State<PlantsAppScreen> {
  int _selectedIndex = 0;
  final List<MyPlant> _myPlants = [];

  List<Widget> get _screens {
    return [
      const PlantsScreen(),
      MyPlantsScreen(
        plants: _myPlants,
        onPlantAdded: (plant) {
          setState(() {
            _myPlants.add(plant);
          });
        },
      ),
      MyPlantsListScreen(
        plants: _myPlants,
      ),
    ];
  }

  final List<String> _titles = const [
    'Catàleg',
    'Afegir planta',
    'Les meves plantes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'Catàleg',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Afegir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Meves',
          ),
        ],
      ),
    );
  }
}