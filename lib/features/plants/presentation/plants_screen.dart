import 'package:flutter/material.dart';

import '../data/plants_repository.dart';
import '../domain/plant.dart';

class PlantsScreen extends StatefulWidget {
  const PlantsScreen({super.key});

  @override
  State<PlantsScreen> createState() => _PlantsScreenState();
}

class _PlantsScreenState extends State<PlantsScreen> {
  final _repository = PlantsRepository();

  List<Plant> _plants = [];
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadPlants();
  }

  Future<void> _loadPlants() async {
    try {
      final plants = await _repository.fetchPlants();

      setState(() {
        _plants = plants;
        _loading = false;
      });
    } catch (error) {
      setState(() {
        _error = error.toString();
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (_error != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Plants'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(_error!),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Plants'),
      ),
      body: ListView.builder(
        itemCount: _plants.length,
        itemBuilder: (context, index) {
          final plant = _plants[index];

          return ListTile(
            leading: plant.imageUrl.isEmpty
                ? const Icon(Icons.local_florist)
                : Image.network(
                    plant.imageUrl,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                  ),
            title: Text(plant.commonName),
            subtitle: Text('Watering: ${plant.watering}'),
          );
        },
      ),
    );
  }
}