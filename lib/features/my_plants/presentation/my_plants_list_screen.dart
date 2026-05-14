import 'package:flutter/material.dart';

import '../domain/my_plant.dart';

class MyPlantsListScreen extends StatelessWidget {
  const MyPlantsListScreen({
    super.key,
    required this.plants,
  });

  final List<MyPlant> plants;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Les meves plantes'),
      ),
      body: plants.isEmpty
          ? const Center(
              child: Text('Encara no has registrat cap planta.'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: plants.length,
              itemBuilder: (context, index) {
                final plant = plants[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        plant.imageBytes == null
                            ? const Icon(
                                Icons.local_florist,
                                size: 96,
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.memory(
                                  plant.imageBytes!,
                                  width: 96,
                                  height: 96,
                                  fit: BoxFit.cover,
                                ),
                              ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                plant.name,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 8),
                              Text('Habitació: ${plant.room}'),
                              if (plant.notes.isNotEmpty) ...[
                                const SizedBox(height: 8),
                                Text('Notes: ${plant.notes}'),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}