import 'package:flutter/material.dart';

import '../list_screen.dart';

class CategoryButton extends StatelessWidget {
  final String categoryName;
  final String imgUrl;
  const CategoryButton({
    super.key,
    required this.categoryName,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ListScreen(
            gameGenre: categoryName,
            headerImageLink: imgUrl,
          ),
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 120,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imgUrl,
                ),
              ),
            ),
          ),
          Text(
            '$categoryName >',
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
