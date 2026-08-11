import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddBookScreen extends StatefulWidget {
  const AddBookScreen({super.key});

  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();
  final _pagesController = TextEditingController();
  String _selectedGenre = 'Roman';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Livre "${_titleController.text}" ajouté avec succès !',
          ),
        ),
      );
      context.pop();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    _pagesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajouter un livre')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Titre du livre',
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val == null || val.trim().isEmpty)
                    return 'Ce champ est obligatoire';
                  if (val.trim().length < 2)
                    return 'Le titre doit contenir au moins 2 caractères';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _authorController,
                decoration: const InputDecoration(
                  labelText: 'Auteur',
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val == null || val.trim().isEmpty)
                    return 'Veuillez saisir un auteur';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _pagesController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Nombre de pages',
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val == null || val.isEmpty)
                    return 'Veuillez saisir le nombre de pages';
                  final pages = int.tryParse(val);
                  if (pages == null || pages <= 0)
                    return 'Veuillez entrer un nombre positif valide';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedGenre,
                decoration: const InputDecoration(
                  labelText: 'Genre',
                  border: OutlineInputBorder(),
                ),
                items: ['Roman', 'Scolaire & SF', 'Essai', 'Conte']
                    .map(
                      (genre) =>
                          DropdownMenuItem(value: genre, child: Text(genre)),
                    )
                    .toList(),
                onChanged: (val) => setState(() => _selectedGenre = val!),
              ),
              const SizedBox(height: 28),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('Enregistrer dans la bibliothèque'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
