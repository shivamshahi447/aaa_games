import 'dart:ffi';

import 'package:aaa_games/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Hello World Demo Application',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(106, 214, 78, 0),
        title: Text(
          'Odyssey',
          style: GoogleFonts.unifrakturCook(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/header_image.webp',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Category",
              style: GoogleFonts.merriweather(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ListScreen(
                        gameGenre: 'Action',
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
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://cdn.mos.cms.futurecdn.net/hH6Fn5kUuz4UtnEDeBgCfc-1200-80.jpg.webp',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Action',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ListScreen(gameGenre: 'Adventure'),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 150,
                        decoration: const BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://cdn.mos.cms.futurecdn.net/A9faYGKfj6grQx8SwEQxUg-1200-80.jpg.webp",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Adventuer',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ListScreen(
                        gameGenre: 'Horror',
                      ),
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 120,
                        width: 150,
                        decoration: const BoxDecoration(),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://cdn.mos.cms.futurecdn.net/A9faYGKfj6grQx8SwEQxUg-1200-80.jpg.webp",
                              fit: BoxFit.fill,
                            )),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Horror',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ListScreen(
                        gameGenre: 'War',
                      ),
                    ),
                  ),
                  child: Container(
                    height: 120,
                    width: 150,
                    decoration: const BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://cdn.mos.cms.futurecdn.net/A9faYGKfj6grQx8SwEQxUg-1200-80.jpg.webp",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ListScreen(gameGenre: 'war'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
