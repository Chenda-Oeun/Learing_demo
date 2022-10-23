import 'package:flutter/material.dart';
import 'package:test_docs/home/models/product.dart';
import 'package:test_docs/widgets/custom_category_card.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("click me?");
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              debugPrint("click me?");
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
        ],
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Discover",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //
          SizedBox(
              width: double.infinity,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categoryList.map((category) {
                  // Component
                  return CustomCategoryCard(
                    categoryModel: category,
                  );
                }).toList(),
              ))
        ],
      ),
    );
  }
}
