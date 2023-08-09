import 'package:home_screen/assets_manger.dart';

class CategoryModel {
  final String imageUrl, title;

  CategoryModel({
    required this.imageUrl,
    required this.title,
  });

  static List<CategoryModel> categoryList = [
    CategoryModel(imageUrl: AssetsManger.bottle, title: 'بلاستك',),
    CategoryModel(imageUrl: AssetsManger.box, title: 'الورق و الكرتون',),
    CategoryModel(imageUrl: AssetsManger.electronics, title: 'أجهزة كهربائية',),
    CategoryModel(imageUrl: AssetsManger.tshirt, title: 'ملابس',),
    CategoryModel(imageUrl: AssetsManger.eating, title: 'معادن',),

  ];
}
