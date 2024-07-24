import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;

  const CategoryList({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 60.0,
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => _buildCategoryItem(
          asset: categories[index].asset,
          label: categories[index].label,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 12.0),
        itemCount: categories.length,
      ),
    );
  }

  Widget _buildCategoryItem({
    required String asset,
    required String label,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: const Color(0xffF8F8F8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Image.asset(
              asset,
              width: 36.0,
              height: 36.0,
            ),
            const SizedBox(width: 12.0),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}


class Category {
  String asset;
  String label;

  Category({
    required this.asset,
    required this.label,
  });
}
