import 'package:flutter/material.dart';
import 'package:home_screen/assets_manger.dart';
import 'package:home_screen/widgets/subtitle_text.dart';
import 'package:home_screen/widgets/title_text.dart';

import '../models/product_model.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: size.height * 0.15,
      width: size.width * 0.9,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.add_shopping_cart,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 30,
          ),
           Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                ),
                TitleTextWidget(
                  lebal: productModel.title,
                  fontSize: 24,
                ),
                TitleTextWidget(
                  maxLine: 2,
                  lebal: productModel.subTitle,
                  color: Colors.grey,
                  fontSize: 17,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SubTitleTextWidget(
                      lebal: 'ريال سعودي',
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                    SubTitleTextWidget(
                      lebal: ' ${productModel.price}',
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Image.asset(
            productModel.imageUrl,
            height: 110,
            width: 110,
          ),
        ],
      ),
    );
  }
}
