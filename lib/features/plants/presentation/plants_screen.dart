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

 final List<Plant> _plants = [];

final ScrollController _scrollController = ScrollController();

  bool _loading = true;
  bool _loadingMore = false;

  String? _error;

  int _page = 1;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);

    _loadPlants();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMorePlants();
    }
  }

  Future<void> _loadPlants() async {
    try {
      final plants = await _repository.fetchPlants(page: _page);

      setState(() {
        _plants.addAll(plants);
        _loading = false;
      });
    } catch (error) {
      setState(() {
        _error = error.toString();
        _loading = false;
      });
    }
  }

  Future<void> _loadMorePlants() async {
    if (_loadingMore) {
      return;
    }

    setState(() {
      _loadingMore = true;
    });

    try {
      _page++;

      final plants = await _repository.fetchPlants(
        page: _page,
      );

      setState(() {
        _plants.addAll(plants);
      });
    } catch (_) {
      // ignorem errors de paginació de moment
    } finally {
      setState(() {
        _loadingMore = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
        controller: _scrollController,
        itemCount: _plants.length + 1,
        itemBuilder: (context, index) {
          if (index == _plants.length) {
            if (_loadingMore) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            return const SizedBox(height: 80);
          }
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