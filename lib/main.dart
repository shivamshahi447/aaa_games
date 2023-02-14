import 'package:aaa_games/widgets/category_button.dart';
import 'package:aaa_games/widgets/header_image_widget.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderImageWidget(
                  headerImageUrl: 'assets/images/header_image.webp'),
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
                  const CategoryButton(
                    categoryName: 'Action',
                    imgUrl: 'assets/images/action.jpg',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  const CategoryButton(
                    categoryName: 'Adventure',
                    imgUrl: 'assets/images/adventure.jpg',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CategoryButton(
                    categoryName: 'Horror',
                    imgUrl: 'assets/images/horror.jpg',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  const CategoryButton(
                    categoryName: 'War',
                    imgUrl: 'assets/images/war.jpg',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CategoryButton(
                    categoryName: 'Sport',
                    imgUrl: 'assets/images/sport.webp',
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  const CategoryButton(
                    categoryName: 'Open World',
                    imgUrl: 'assets/images/open_world.webp',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
