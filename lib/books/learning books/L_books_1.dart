import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:loginui/books/learning%20books.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

class learning_1 extends StatefulWidget {
  learning_1({Key? key}) : super(key: key);

  @override
  State<learning_1> createState() => _SliderPState();
}

class _SliderPState extends State<learning_1> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://static.wixstatic.com/media/c109b9_efcfd939402f4e45a1a71cc0ad859760~mv2.png',
    'https://static.wixstatic.com/media/c109b9_3a26832e3fc94ba7963b1fc909c9ee05~mv2.png',
    'https://static.wixstatic.com/media/c109b9_209b30b5b63b4a97bac65afbedfa62f4~mv2.png',
    'https://static.wixstatic.com/media/c109b9_634dddf637934997a1a8c175ac39e381~mv2.png',
    'https://static.wixstatic.com/media/c109b9_5391be73c3dc4ee481121ca31f1e2a1f~mv2.png',
    'https://static.wixstatic.com/media/c109b9_ed31995498944a099c92a00f6b765461~mv2.png',
    'https://static.wixstatic.com/media/c109b9_632e8a22430640faba4450dbf0a88735~mv2.png',
    'https://static.wixstatic.com/media/c109b9_2aa17abf819a4f5a923193e9f8903d82~mv2.png',
    'https://static.wixstatic.com/media/c109b9_0090a06bc2694290963280adeab187e2~mv2.png',
    'https://static.wixstatic.com/media/c109b9_d351e6ec3db947dda9d1bd4263dc1be1~mv2.png',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 40, 35),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: Duration(seconds: 60),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index))),
            SizedBox(height: 12),
            buildIndicator(),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return learning();
                }));
              },
              icon: Icon(Icons.book_sharp),
              label: Text("العودة الى قائمة الكتبص"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
    activeIndex: activeIndex,
    count: urlImages.length,
  );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) =>
    Container(child: Image.network(urlImage, fit: BoxFit.cover));
