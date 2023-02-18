import 'package:aaa_games/widgets/header_image_widget.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final String gameGenre;
  final String headerImageLink;
  final List listOfGames;

  const ListScreen({
    super.key,
    required this.gameGenre,
    required this.headerImageLink,
    required this.listOfGames,
  });

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
            ListView.builder(
              shrinkWrap: true,
              itemCount: listOfGames.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        listOfGames[index].gameImage,
                      ),
                    ),
                    title: Text(listOfGames[index].gameTitle),
                    subtitle: Text('Rating ${listOfGames[index].gameRating}'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
