import 'package:flutter/material.dart';
import 'package:test_docs/home/models/product.dart';

class CustomCategoryCard extends StatelessWidget {
  final Category? categoryModel;
  const CustomCategoryCard({Key? key, this.categoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 250,
      margin: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(categoryModel!.imageUrl!),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200]!,
                  blurRadius: 5,
                  spreadRadius: 3,
                  offset: const Offset(1, 2),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            categoryModel!.name!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "${categoryModel!.numberOfProducts} items",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
