import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  final String? image;
  final String? title;
  final String? numbers;
  const CustomCategory({
    Key? key,
    this.image,
    this.numbers,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200]!,
            blurRadius: 6,
            spreadRadius: 4,
            offset: const Offset(1, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Image.network(
            image!,
            height: 100,
          ),
          const SizedBox(height: 20),
          Text(
            title!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "$numbers place",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
