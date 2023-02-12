import 'package:aaa_games/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Hello World Demo Application',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                          builder: (_) => const ListScreen(
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
                                image: AssetImage(
                                  'assets/images/action.jpg',
                                ),
                              ),
                            ),
                          ),
                          const Text(
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
                          builder: (_) =>
                              const ListScreen(gameGenre: 'Adventure'),
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
                              child: Image.asset(
                                "assets/images/adventure.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'Adventure',
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
                              child: Image.asset(
                                "assets/images/horror.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
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
                      width: 50,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const ListScreen(
                            gameGenre: 'War',
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
                              child: Image.asset(
                                "assets/images/war.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Text(
                            'War',
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const ListScreen(gameGenre: 'Sport'),
                      )),
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
                                image: AssetImage('assets/images/sport.webp'),
                              ),
                            ),
                          ),
                          const Text('Sport',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              const ListScreen(gameGenre: 'Open World'),
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
                                image:
                                    AssetImage('assets/images/open_world.webp'),
                              ),
                            ),
                          ),
                          const Text(
                            'Open World',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
