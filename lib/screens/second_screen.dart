import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey.shade700),
      ),
      body: SingleChildScrollView(
        child: CarouselSlider(
          options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: true,
              height: 350),
          items: [
            Image.asset('assets/head1.png'),
            Image.asset('assets/head2.png')
          ],
        ),
      ),
      
    );
  }
}
