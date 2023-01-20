import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

class islamic_six extends StatefulWidget {
  islamic_six({Key? key}) : super(key: key);

  @override
  State<islamic_six> createState() => _SliderPState();
}

class _SliderPState extends State<islamic_six> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://static.wixstatic.com/media/c109b9_15a2ac3d5a6f42e694acf0d6aaf5c528~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_70757747ed644abbb66f3a882f6b69a4~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_9ac9895603974c0db46a3c637e8a02c6~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_f26f3272e27749ec844f38dcf7580956~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_6465daf706ab4d8db0cf15fb34c1923e~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_d3275d6b71cf46cf9821126fd155cc71~mv2.jpg',
    'https://static.wixstatic.com/media/c109b9_3d540199dcc747b487d7687415242d74~mv2.jpg',
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
