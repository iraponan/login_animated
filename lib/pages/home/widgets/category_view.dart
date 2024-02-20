import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = [
    'Trabalho',
    'Estudos',
    'Casa',
  ];

  int _category = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _category > 0 ? selectBackward : null,
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.white,
          disabledColor: Colors.white30,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
          ),
        ),
        IconButton(
          onPressed: _category < (categories.length - 1) ? selectForward : null,
          icon: const Icon(
            Icons.arrow_forward_ios,
          ),
          color: Colors.white,
          disabledColor: Colors.white30,
        )
      ],
    );
  }

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }
}
