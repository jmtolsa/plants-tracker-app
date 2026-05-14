import 'package:flutter/material.dart';

import '../domain/plant.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.commonName),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (plant.imageUrl.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                plant.imageUrl,
                height: 240,
                fit: BoxFit.cover,
              ),
            )
          else
            const Icon(
              Icons.local_florist,
              size: 120,
            ),
          const SizedBox(height: 24),
          Text(
            plant.commonName,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 12),
          Text(
            'Familia: ${plant.genus}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 24),
          const Text(
            'Aquesta pantalla mostra el detall bàsic d’una planta obtinguda des de l’API.',
          ),
        ],
      ),
    );
  }
}