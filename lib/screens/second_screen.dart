import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vertical sliding carousel demo')),
      body: CarouselSlider(
        options: CarouselOptions(
      aspectRatio: 2.0,
      enlargeCenterPage: true,
      scrollDirection: Axis.vertical,
      autoPlay: true,
        ), items:const <Widget>[AssetImage('assets/head1.png')],
      ),
    );
  }
}
