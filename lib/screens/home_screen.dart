import 'package:flutter/material.dart';
import 'package:home_screen/widgets/product_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../models/category_model.dart';
import '../models/product_model.dart';
import '../widgets/Navigation_bar.dart';
import '../widgets/category_widget.dart';
import '../widgets/subtitle_text.dart';
import '../widgets/title_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),

            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("الصفحة الرئيسية"),
              selectedColor: Colors.purple,
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(0.25),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TitleTextWidget(
                              lebal: 'الموقع الحالي ',
                            ),
                            SubTitleTextWidget(
                                lebal:
                                    'البحرين , المحافظة الشمالية , مدينة حمد'),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.locationDot,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'بحث',
                      hintStyle: TextStyle(fontSize: 24),
                      suffixIcon: const Icon(Icons.search),
                      filled: true,
                      contentPadding: const EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: size.height * 0.1,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: CategoryModel.categoryList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: CategoryWidget(
                              categoryModel: CategoryModel.categoryList[index]),
                        );
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: size.width * 0.1,
                        width: size.width * 0.2,
                        child: const Center(child: Text('فستان')),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: size.width * 0.1,
                        width: size.width * 0.2,
                        child: const Center(child: Text('تيشرت')),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: size.width * 0.1,
                        width: size.width * 0.2,
                        child: const Center(child: Text('الكل')),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: size.height * 0.5,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: ProductModel.productList.length,
                      itemBuilder: (context, index) {
                        return ProductWidget(
                          productModel: ProductModel.productList[index],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
