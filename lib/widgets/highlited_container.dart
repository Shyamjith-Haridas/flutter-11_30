import 'package:flutter/material.dart';

class HighlightedContainer extends StatelessWidget {
  const HighlightedContainer({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 80,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(186, 197, 243, 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.indigo[600],
          ),
        ),
      ),
    );
  }
}
