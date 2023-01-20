import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

class islamic_two extends StatefulWidget {
  islamic_two({Key? key}) : super(key: key);

  @override
  State<islamic_two> createState() => _SliderPState();
}

class _SliderPState extends State<islamic_two> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://static.wixstatic.com/media/c109b9_fd0d5e87e95149969add4d877c7b092c~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_70d03640d8704f5cbb7974f7b31993e8~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_2406641b7e86465cb531c1c75d177db0~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_a80ae2ca4a274cf7b1f0aa9c1b77fe99~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_ff633260ab244548ad2e0266d8d1ab0f~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_2c658094eb6e4e0abc0414730d0ca75b~mv2.jpg',
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
