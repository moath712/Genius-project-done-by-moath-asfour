import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

import '../fiction_stories.dart';

class fiction_3 extends StatefulWidget {
  fiction_3({Key? key}) : super(key: key);

  @override
  State<fiction_3> createState() => _SliderPState();
}

class _SliderPState extends State<fiction_3> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://static.wixstatic.com/media/c109b9_a39587d0d67d4a72b52592a53bd4bad9~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_bdc2e1c1c39d400f82a923f95affa98d~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_7534009f9315494caf15af4f15c68171~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_d00e0d280d744ea28360767040deb636~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_470efd996a464817a630f348184f01ef~mv2.jpg',

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
