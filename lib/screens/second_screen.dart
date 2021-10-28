import 'package:challenge/screens/cart.dart';
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
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  // autoPlay: true,
                  height: 350),
              items: [
                Image.asset('assets/head1.png'),
                Image.asset('assets/head2.png')
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 29),
              child: Row(
                children: [
                  Text(
                    'Headphones',
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  Text(
                    'Airpods Max',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    '\$549',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 30),
              child: Row(
                children: [
                  Text(
                    'High-Fidelity Audio The Apple designed\n drivers delivers high-fidelity payback...',
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 19),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 59),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.black),
              child: MaterialButton(
                height: 71,
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const CartScreen()));
                },
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                // color: Colors.indigo.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
