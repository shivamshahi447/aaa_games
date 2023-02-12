import 'package:flutter/material.dart';

class HeaderImageWidget extends StatelessWidget {
  final String headerImageUrl;
  const HeaderImageWidget({super.key, required this.headerImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            '$headerImageUrl',
          ),
        ),
      ),
    );
  }
}
