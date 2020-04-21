
class Food
{
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food({this.id,this.name,this.imagePath,this.category,this.price,this.discount,this.ratings});
}

final foods=[
  Food(
    id:"1",
    name: "Fried Rice",
    imagePath: "asserts/friedricem.jpg",
    category: "1",
    price: 200.00,
    discount: 25.0,
    ratings: 99.0,
  ),
  Food(
    id:"2",
    name: "Breakfast",
    imagePath: "asserts/riceandcurry.jpg",
    category: "2",
    price: 100.00,
    discount: 25.0,
    ratings: 69.0,
  ),
];