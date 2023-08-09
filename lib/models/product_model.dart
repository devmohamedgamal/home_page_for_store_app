import 'package:home_screen/assets_manger.dart';

class ProductModel {
  final String imageUrl, title, subTitle, price;

  ProductModel({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  static List<ProductModel> productList = [
    ProductModel(
      imageUrl: AssetsManger.dress_1,
      title: 'فستان طويل',
      price: '200',
      subTitle: 'لديك فستان ما تستخدمية بيعية الان',
    ),
    ProductModel(
      imageUrl: AssetsManger.dress_2,
      title: 'فستان جميل',
      price: '333',
      subTitle: 'فستان جديد',
    ),
    ProductModel(
      imageUrl: AssetsManger.tshirt_1,
      title: 'تيشرت',
      price: '300',
      subTitle: 'تيشرت للبيت',
    ),
    ProductModel(
        imageUrl: AssetsManger.tshirt_2,
        title: 'تيشرت',
        price: '250',
        subTitle: 'تيشرت للبيت'),
  ];
}
