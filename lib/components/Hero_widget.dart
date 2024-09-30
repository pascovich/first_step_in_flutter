import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
    );
  }
}
