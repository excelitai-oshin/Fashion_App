class TopCategoriModel{
  String? categoriName;
  String? imagePath;
  String? items;

  TopCategoriModel({this.categoriName,this.imagePath,this.items,});
  static List<TopCategoriModel> list=[
    TopCategoriModel(
      categoriName: "Popular",
      imagePath: "images/jannatul_peya/popular.png",
      items: "12 items",
    ),
    TopCategoriModel(
        categoriName: "Electronics",
        imagePath: "images/jannatul_peya/phone.png",
        items: "7 items",
    ),
    TopCategoriModel(
        categoriName: "Fashion",
        imagePath: "images/jannatul_peya/fashion.png",
        items: "3 items",
    ),
    TopCategoriModel(
        categoriName: "Bikes",
        imagePath: "images/jannatul_peya/bike.png",
        items: "2 items",
    ),
    TopCategoriModel(
        categoriName: "Food",
        imagePath: "images/jannatul_peya/food.png",
        items: "7 items",
    ),
    TopCategoriModel(
        categoriName: "Popular",
        imagePath: "images/jannatul_peya/popular.png",
        items: "3 items",
    ),
  ];
}