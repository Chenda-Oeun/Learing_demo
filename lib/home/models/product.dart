class Category {

  String? name;
  String? imageUrl;
  double? price;
  int? numberOfProducts;

  Category(
      {required this.name,
      this.price,
      this.imageUrl,
      this.numberOfProducts}); //name parameter
}

List<Category> categoryList = [
  Category(
    name: "Table",
    imageUrl:
        "https://www.ikea.com/us/en/images/products/ingatorp-extendable-table-black__0737088_pe740878_s5.jpg",
    numberOfProducts: 21,
    price: 40,
  ),
  Category(
    name: "Sofa",
    price: 100,
    imageUrl:
        "https://www.ikea.com/om/en/images/products/linanaes-3-seat-sofa-vissle-beige__1013894_pe829446_s5.jpg",
    numberOfProducts: 20,
  ),
  Category(
    name: "Chair",
    price: 200,
    imageUrl:
        "https://www.godrejinterio.com/imagestore/B2C/56101543SD00017/56101543SD00017_01_1500x1500.png",
    numberOfProducts: 12,
  ),
];
