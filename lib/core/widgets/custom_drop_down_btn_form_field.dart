import 'package:barid_x_assignment/core/widgets/build_outer_border.dart';
import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String label;
  final List<T> items;
  final T? value;
  final Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final String? hint;
  final bool isExpanded;

  const CustomDropdown({
    super.key,
    required this.label,
    required this.items,
    this.value,
    required this.onChanged,
    this.validator,
    this.hint,
    this.isExpanded = true,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        labelText: label,
        border: buildOuterBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
      isExpanded: isExpanded,
      hint: hint != null ? Text(hint!) : null,
      items: items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(item.toString()), 
        );
      }).toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
