import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Row(
                  children: const [
                    Text(
                      'Cart',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 30),
                height: 125,
                width: 388,
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 139,
                      width: 132,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/head1.png'),
                            fit: BoxFit.cover),
                        color: const Color(0xfffef8e0),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Airpods Max',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 70,
                                  ),
                                  const Icon(Icons.restore_from_trash_sharp)
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                '\$549',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 0),
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 30),
                height: 125,
                width: 388,
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 139,
                      width: 132,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/head2.png',
                            ),
                            fit: BoxFit.cover),
                        color: const Color(0xffE8FCD7),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'X-Seven',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 110,
                                  ),
                                  const Icon(Icons.restore_from_trash_sharp)
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                '\$149',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: const [
                    Text(
                      'Payment Methods',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 19),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                  tileColor: const Color(0xffd4dbf8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  leading: const Icon(Icons.card_giftcard),
                  title: const Text('Travel Card'),
                  subtitle: const Text(
                    'Master Card-3356',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              const Text(
                'Total order',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              const Text(
                '\$698',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
               const SizedBox(height: 42),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: Colors.black),
                child: MaterialButton(
                  height: 71,
                  minWidth: 395,
                  onPressed: () {},
                  child: const Text(
                    'CheckOut',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  // color: Colors.indigo.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
