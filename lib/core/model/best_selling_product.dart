class BestSellingProductModel {
  String? imageUrl;
  String? productName;
  String? productDetail;
  String? productPrice;
  String? productRating;

  BestSellingProductModel({
    this.imageUrl,
    this.productName,
    this.productDetail,
    this.productPrice,
    this.productRating,
  });

  static List<BestSellingProductModel> list=[
    BestSellingProductModel(
      imageUrl: "images/ecom/women/Sharee/s2.jpg",
      productName:"product 1",
      productDetail: "product 1 detail",
      productPrice: "2050",
      productRating: "4.5",
    ),
    BestSellingProductModel(
      imageUrl: "images/ecom/women/Sharee/s3.png",
      productName:"product 2",
      productDetail: "product 1 detail",
      productPrice: "2050",
      productRating: "4.5",
    ),
    BestSellingProductModel(
      imageUrl: "images/ecom/women/Sharee/s4.png",
      productName:"product 3",
      productDetail: "product 1 detail",
      productPrice: "2050",
      productRating: "4.5",
    ),
    BestSellingProductModel(
      imageUrl: "images/ecom/women/Sharee/s5.png",
      productName:"product 4",
      productDetail: "product 1 detail",
      productPrice: "2050",
      productRating: "4.5",
    ),
  ];
}
