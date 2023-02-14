import 'package:aaa_games/model/game.dart';
import 'package:flutter/material.dart';

import '../list_screen.dart';

class CategoryButton extends StatefulWidget {
  final String categoryName;
  final String imgUrl;
  const CategoryButton({
    super.key,
    required this.categoryName,
    required this.imgUrl,
  });

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  List<Game> _game = [
    Game(
      gameTitle: 'GTA',
      gameImage:
          'https://cdn.cloudflare.steamstatic.com/steam/apps/271590/capsule_616x353.jpg?t=1671485100',
      gameRating: '8',
    ),
    Game(
        gameTitle: 'pubg',
        gameImage: 'https://wallpapers.com/pubg-thumbnail',
        gameRating: '9'),
    Game(gameTitle: 'call of duty', gameImage: 'image.png', gameRating: '10'),
  ];

  //  List<String> gameList = [
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ListScreen(
            gameGenre: widget.categoryName,
            headerImageLink: widget.imgUrl,
            listOfGames: _game,
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
                  widget.imgUrl,
                ),
              ),
            ),
          ),
          Text(
            '${widget.categoryName} >',
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
