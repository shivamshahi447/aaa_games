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
  List<Game> _action = [
    Game(
      gameTitle: 'GTA',
      gameImage:
          'https://cdn.cloudflare.steamstatic.com/steam/apps/271590/capsule_616x353.jpg?t=1671485100',
      gameRating: '8',
    ),
    Game(
        gameTitle: 'pubg',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/666/441/256/pubg-pubh-playerunknown-s-battlegrounds-wallpaper-preview.jpg',
        gameRating: '9'),
    Game(
        gameTitle: 'call of duty',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/209/251/804/cod-mw-ghost-call-of-duty-hd-wallpaper-preview.jpg',
        gameRating: '10'),
  ];

  final List<Game> _adventure = [
    Game(
        gameTitle: 'God of War',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/265/867/808/video-games-god-of-war-god-of-war-2-god-of-war-3-god-of-war-4-kratos-god-of-war-ascension-god-of-wa-video-games-kratos-hd-art-wallpaper-preview.jpg',
        gameRating: '9'),
    Game(
        gameTitle: 'Spider-Man',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/845/727/829/video-games-spider-man-superhero-marvel-comics-wallpaper-preview.jpg',
        gameRating: '8'),
    Game(
        gameTitle: 'Batman: Arkham City',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/849/1015/727/batman-batman-logo-video-games-batman-arkham-origins-wallpaper-preview.jpg',
        gameRating: '7'),
  ];

  final List<Game> _horror = [
    Game(
      gameTitle: 'Outlast ',
      gameImage:
          'https://c4.wallpaperflare.com/wallpaper/992/856/55/outlast-red-barrels-2013-wallpaper-preview.jpg',
      gameRating: '8',
    ),
    Game(
        gameTitle: 'Amnesia',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/899/607/586/amnesia-the-dark-descent-artwork-wallpaper-preview.jpg',
        gameRating: '9'),
    Game(
        gameTitle: 'Last of us',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/338/209/238/girl-guitar-game-face-wallpaper-preview.jpg',
        gameRating: '10'),
  ];
  final List<Game> _war = [
    Game(
      gameTitle: 'Battlefield ',
      gameImage:
          'https://c4.wallpaperflare.com/wallpaper/866/562/554/video-games-artwork-battlefield-4-night-operations-battlefield-4-wallpaper-preview.jpg',
      gameRating: '8',
    ),
    Game(
        gameTitle: 'Arma 3',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/136/76/847/video-games-arma-3-wallpaper-preview.jpg',
        gameRating: '9'),
    Game(
        gameTitle: ' War Thunder',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/522/502/546/war-thunder-airplane-gaijin-entertainment-tank-wallpaper-preview.jpg',
        gameRating: '10'),
  ];
  final List<Game> _sport = [
    Game(
      gameTitle: 'Asphalt 9: ',
      gameImage:
          'https://c4.wallpaperflare.com/wallpaper/17/458/556/video-game-asphalt-9-legends-reflection-sport-car-hd-wallpaper-preview.jpg',
      gameRating: '8',
    ),
    Game(
        gameTitle: 'NBA2K15',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/873/248/963/nba-2k15-visual-concepts-nba-2k-2014-wallpaper-preview.jpg',
        gameRating: '9'),
    Game(
        gameTitle: 'EA Sports UFC 3',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/934/317/285/video-game-ea-sports-ufc-3-conor-mcgregor-wallpaper-preview.jpg',
        gameRating: '9'),
  ];

  final List<Game> _openworld = [
    Game(
      gameTitle: 'Mount and Blade ',
      gameImage:
          'https://c4.wallpaperflare.com/wallpaper/790/259/581/mount-and-blade-2-bannerlord-4k-poster-wallpaper-preview.jpg',
      gameRating: '10',
    ),
    Game(
        gameTitle: 'Fallout 4',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/687/550/432/fallout-4-fallout-german-shepherd-wallpaper-preview.jpg',
        gameRating: '9'),
    Game(
        gameTitle: 'Red Dead Redemption 2',
        gameImage:
            'https://c4.wallpaperflare.com/wallpaper/75/518/522/red-dead-redemption-2-dark-4k-wallpaper-preview.jpg',
        gameRating: '5'),
  ];

  List<Game> returnList() {
    List<Game> _list = [];

    if (widget.categoryName == 'Action') {
      _list = _action;
    }
    if (widget.categoryName == 'Adventure') {
      _list = _adventure;
    }
    if (widget.categoryName == 'Horror') {
      _list = _horror;
    }
    if (widget.categoryName == 'War') {
      _list = _war;
    }
    if (widget.categoryName == 'Sport') {
      _list = _sport;
    }
    if (widget.categoryName == 'Open World') {
      _list = _openworld;
    }

    return _list;
  }

  //  List<String> gameList = [
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ListScreen(
            gameGenre: widget.categoryName,
            headerImageLink: widget.imgUrl,
            listOfGames: returnList(),
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
