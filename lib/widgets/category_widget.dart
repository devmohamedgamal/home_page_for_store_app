import 'package:flutter/material.dart';
import 'package:home_screen/widgets/subtitle_text.dart';

import '../models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        
      },
      child: Column(
        children: [
          Image.asset(
            categoryModel.imageUrl,
            height: 60,
            width: 60,
          ),
          const SizedBox(
            height: 5,
          ),
          SubTitleTextWidget(
            lebal: categoryModel.title,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
