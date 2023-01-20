import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

import '../fiction_stories.dart';

class fiction_5 extends StatefulWidget {
  fiction_5({Key? key}) : super(key: key);

  @override
  State<fiction_5> createState() => _SliderPState();
}

class _SliderPState extends State<fiction_5> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://static.wixstatic.com/media/c109b9_eadd2b76cc23485f8373ea338d09d24e~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_e6379930d5c5406ab8a2464c338480c2~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_b18983b346a14a3d809554d9dd14307e~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_e6379930d5c5406ab8a2464c338480c2~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_25c3a4b0147d468792fe8475cda5a918~mv2.jpg',
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
                    autoPlayAnimationDuration: Duration(seconds:60),
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
                  return fiction();
                }));
              },
              icon: Icon(Icons.book_sharp),
              label: Text("العودة الى قائمة القصص"),
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
