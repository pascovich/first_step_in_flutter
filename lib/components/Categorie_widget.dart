import 'package:flutter/material.dart';

class CategorieWidget extends StatefulWidget {
  const CategorieWidget({super.key});

  @override
  State<CategorieWidget> createState() => _CategorieWidgetState();
}

class _CategorieWidgetState extends State<CategorieWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(width: 10),
          Container(
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(width: 10),
          Container(
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(width: 10),
          Container(
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(width: 10),
          Container(
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
