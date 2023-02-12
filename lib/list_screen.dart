import 'package:aaa_games/widgets/header_image_widget.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final String gameGenre;
  final String headerImageLink;

  const ListScreen(
      {super.key, required this.gameGenre, required this.headerImageLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gameGenre),
        backgroundColor: const Color.fromARGB(106, 214, 78, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header image
            HeaderImageWidget(headerImageUrl: headerImageLink),
            // list of games
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  headerImageLink,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  headerImageLink,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  headerImageLink,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
