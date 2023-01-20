import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

import '../fiction_stories.dart';

class fiction_4 extends StatefulWidget {
  fiction_4({Key? key}) : super(key: key);

  @override
  State<fiction_4> createState() => _SliderPState();
}

class _SliderPState extends State<fiction_4> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://static.wixstatic.com/media/c109b9_2d98f0e575a443d28184822523181318~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_95b8881068a947ec9fe0ae92484dab35~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_df473968a02e4f26aaf72ff79b4af258~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_166a8b0730f34a589ec256d57907c7f6~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_f3dd70b0fae8492db69e5394d4ddd9a0~mv2.jpg',
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
