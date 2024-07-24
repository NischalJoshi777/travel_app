import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF8F8F8),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.0)),
        hintText: 'Enter name or category',
        suffixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
          size: 28.0,
        ),
      ),
    );
  }
}
