import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:loginui/books/islamic_stories.dart';

class learning_5 extends StatefulWidget {
  learning_5({Key? key}) : super(key: key);

  @override
  State<learning_5> createState() => _SliderPState();
}

class _SliderPState extends State<learning_5> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://scontent.famm6-1.fna.fbcdn.net/v/t1.6435-9/33580838_854005761474869_6480010424413585408_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=DGSepbL-VU4AX80XXIW&_nc_ht=scontent.famm6-1.fna&oh=00_AfCx8zy5mqXiYEit_IHtQz5lfOXVYRGwzBR0DylGtbLCmQ&oe=63C30559',
    'https://scontent.famm6-1.fna.fbcdn.net/v/t1.6435-9/33540714_854005788141533_6850995405790904320_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=z3H6trCovykAX8-yrTG&_nc_ht=scontent.famm6-1.fna&oh=00_AfDnD9z4vuK_gqaSde8a-JH4Nw6b5G6x53EiAPVdLNXabw&oe=63C30D49',
    'https://images.unsplash.com/photo-1627916607164-7b20241db935?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1522037576655-7a93ce0f4d10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1570829053985-56e661df1ca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
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
                    autoPlayAnimationDuration: Duration(seconds: 2),
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
