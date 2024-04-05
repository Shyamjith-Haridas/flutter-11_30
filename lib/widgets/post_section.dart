import 'package:flutter/material.dart';

class PostData extends StatelessWidget {
  const PostData({
    super.key,
    required this.postTitle,
    required this.postCount,
  });

  final String postTitle;
  final String postCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          postTitle,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          postCount,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 21,
          ),
        ),
      ],
    );
  }
}
