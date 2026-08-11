import 'package:flutter/material.dart';

class GenreChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const GenreChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: FilterChip(
        selected: isSelected,
        label: Text(label),
        onSelected: (_) => onTap(),
        selectedColor: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
