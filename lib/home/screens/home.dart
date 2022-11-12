import 'package:flutter/material.dart';
import 'package:test_docs/widgets/custom_category_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categoryList = [
      {
        "image": "https://cdn-icons-png.flaticon.com/512/6426/6426733.png",
        "title": "Food",
        "number": "12",
      },
      {
        "image":
            "https://i.pinimg.com/736x/9d/f9/44/9df944382f90bfb07aff129c8a745b26.jpg",
        "title": "Drink",
        "number": "13",
      },
      {
        "image":
            "https://media1.giphy.com/media/Vc4armIKdhm5CLzvjS/giphy.gif?cid=6c09b95290voqfxt2ysn21sb6bwhytyjywpre8g3oa3vf7k6&rid=giphy.gif&ct=s",
        "title": "Coffee",
        "number": "41",
      },
      {
        "image": "https://cdn-icons-png.flaticon.com/512/6426/6426733.png",
        "title": "Drink",
        "number": "13",
      },
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9TkApbh5F6w6_bgqSQoXIOsMMS0Sq-VJhjfraPXY&s",
        "title": "Drink",
        "number": "13",
      },
      {
        "image": "https://cdn-icons-png.flaticon.com/512/6426/6426733.png",
        "title": "Food",
        "number": "12",
      },
      {
        "image":
            "https://i.pinimg.com/736x/9d/f9/44/9df944382f90bfb07aff129c8a745b26.jpg",
        "title": "Drink",
        "number": "13",
      },
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx7MYfbLna20nNLKBTZtgqRzrmod9thFtQStCZvhFabLGvc1YoP-5MRFVOFfBI3kHaoq8&usqp=CAU",
        "title": "Coffee",
        "number": "41",
      },
      {
        "image": "https://cdn-icons-png.flaticon.com/512/6426/6426733.png",
        "title": "Drink",
        "number": "13",
      },
      {
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9TkApbh5F6w6_bgqSQoXIOsMMS0Sq-VJhjfraPXY&s",
        "title": "Coffee",
        "number": "323",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          "Menu",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: categoryList.length,
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 235,
        ),
        itemBuilder: (context, index) {
          return CustomCategory(
            image: categoryList[index]["image"],
            title: categoryList[index]["title"],
            numbers: categoryList[index]["number"],
          );
        },
      ),
    );
  }
}
