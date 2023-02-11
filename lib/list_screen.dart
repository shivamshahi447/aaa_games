import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final String gameGenre;
  const ListScreen({super.key, required this.gameGenre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gameGenre),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("This is list action games"),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            width: 150,
            decoration: const BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://cdn.mos.cms.futurecdn.net/w844TWsyvV7jNksWB6ma9J-1200-80.jpg.webp",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
