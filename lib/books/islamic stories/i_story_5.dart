import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

class islamic_five extends StatefulWidget {
  islamic_five({Key? key}) : super(key: key);

  @override
  State<islamic_five> createState() => _SliderPState();
}

class _SliderPState extends State<islamic_five> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://static.wixstatic.com/media/c109b9_61dc99d1d3824decb10e31123a531a04~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_cf429983802a44d28273c288cde696b3~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_9b365e543d2640b1b0167046da2c50d6~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_17e576fcd363468188ebbf8d7f345449~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_0c88cd53fd574cdb9ae740b2ed7c056d~mv2.jpg',
   'https://static.wixstatic.com/media/c109b9_6cca9afb90d84d928d57a20a070eeed9~mv2.jpg',
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
                  return islamic();
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
