import 'package:flutter/material.dart';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

class MyPlantsScreen extends StatefulWidget {
  const MyPlantsScreen({super.key});

  @override
  State<MyPlantsScreen> createState() => _MyPlantsScreenState();
}

class _MyPlantsScreenState extends State<MyPlantsScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _roomController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _roomController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  final ImagePicker _picker = ImagePicker();
  XFile? _file;
  Uint8List? _imageBytes;

  String? _requiredText(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Camp obligatori';
    }

    return null;
  }

  Future<void> _pick(ImageSource source) async {
    final file = await _picker.pickImage(
      source: source,
    );

    if (!mounted || file == null) {
      return;
    }

    final bytes = await file.readAsBytes();

    setState(() {
      _file = file;
      _imageBytes = bytes;
    });
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Planta registrada: ${_nameController.text}',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Les meves plantes'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nom de la planta',
              ),
              validator: _requiredText,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _roomController,
              decoration: const InputDecoration(
                labelText: 'Habitació',
              ),
              validator: _requiredText,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _notesController,
              decoration: const InputDecoration(
                labelText: 'Notes',
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 24),

            if (_imageBytes != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.memory(
                  _imageBytes!,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              )
            else
              const Icon(
                Icons.local_florist,
                size: 96,
              ),

            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      _pick(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.photo_library),
                    label: const Text('Galeria'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      _pick(ImageSource.camera);
                    },
                    icon: const Icon(Icons.photo_camera),
                    label: const Text('Càmera'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Guardar planta'),
            ),
          ],
        ),
      ),
    );
  }
}