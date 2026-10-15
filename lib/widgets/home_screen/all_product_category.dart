import 'package:flutter/material.dart';
import 'package:stock_bin/widgets/home_screen/custom_container.dart';
import 'product_category.dart';

class AllProductCategory extends StatelessWidget {
  const AllProductCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisExtent: 120,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const ProductCategory(),
          );
        },
      ),
    );
  }
}
