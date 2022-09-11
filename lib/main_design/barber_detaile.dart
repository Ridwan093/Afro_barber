import 'package:afro_barber/App_service/text_helper.dart';
import 'package:afro_barber/animation_services/animatecontainer.dart';
import 'package:afro_barber/main_design/appotment_detaile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../auth_service/sign_in.dart';
import '../navigator/route.dart';

const String subimagepath2 = 'asset/barber profile3.jpg';
const String subimagepath1 = 'asset/hairsty.jpg';
const String subimagepath3 = 'asset/black man with tie hairstyle.jpg';
const String subimagepath4 = 'asset/dien with afro hairsty.jpg';

class BarberDetails extends StatefulWidget {
  final String imagepath;
  final String shoptitle;
  final bool rate;
  final String ratenumber;
  final String location;
  final String street;

  const BarberDetails(
      {Key? key,
      required this.street,
      required this.location,
      required this.imagepath,
      required this.shoptitle,
      required this.rate,
      required this.ratenumber})
      : super(key: key);

  @override
  State<BarberDetails> createState() => _BarberDetailsState();
}

TextDemo demo = TextDemo();

class _BarberDetailsState extends State<BarberDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: demo.ralewaytext(
              'Barber Details', Colors.white, 20, FontWeight.bold),
          leading: InkWell(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 41, 41, 41),
                shape: BoxShape.circle,
              ),
              child: const Center(child: Icon(Icons.arrow_back_ios)),
            ),
          ),
          actions: [
            Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 41, 41, 41),
                shape: BoxShape.circle,
              ),
              child: const Center(
                  child: Icon(
                Icons.bookmark,
                color: Colors.white,
              )),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: widget.imagepath,
                child: BoxWidget(
                  size: Size(size.width, 220),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.imagepath), fit: BoxFit.cover),
                    borderRadius: BorderRadiusDirectional.circular(12),
                  ),
                  child: Container(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  demo.ralewaytext(
                      widget.shoptitle, Colors.white, 30, FontWeight.bold),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 41, 41, 41),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.solid,
                              blurRadius: 1.0,
                              color: Colors.black38)
                        ]),
                    child: const Center(
                        child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  demo.ralewaytext(
                      widget.street, Colors.white54, 12, FontWeight.bold),
                  const SizedBox(
                    width: 10,
                  ),
                  demo.ralewaytext(
                      widget.location, Colors.white54, 12, FontWeight.bold),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 16,
                      ),
                      widget.rate
                          ? const Icon(
                              Icons.star_border,
                              color: Colors.grey,
                              size: 16,
                            )
                          : const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: demo.ralewaytext(
                        '  ${widget.ratenumber}   ( 2.9 review )',
                        Colors.grey,
                        10,
                        FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sideConatiner(height: 35.0, width: 110.0, text: 'Hair style'),
                  const SizedBox(
                    width: 15,
                  ),
                  sideConatiner(
                      height: 35.0, width: 160.0, text: "Men's Hair cut"),
                  const SizedBox(
                    width: 15,
                  ),
                  Flexible(
                      child: sideConatiner(
                          height: 35.0, width: 110.0, text: 'Coloring')),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              demo.ralewaytext(
                  "About barber", Colors.white, 30, FontWeight.bold),
              const SizedBox(
                height: 10,
              ),
              demo.ralewaytext(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam luctus justo euismod, pharetra nisl eget, ullamcorper orci. Praesent ullamcorper est neque, a euismod dolor bibendum eget. Nullam velit sem, ornare mattis pharetra nisl eget, ullamcorper orci. Praesent ullamcorper est neque, a ",
                  Colors.grey,
                  18,
                  FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
              demo.ralewaytext("Gallery", Colors.white, 30, FontWeight.bold),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: gallerybox(imagepath: subimagepath1)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: gallerybox(imagepath: subimagepath2)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: gallerybox(imagepath: subimagepath3)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: gallerybox(imagepath: subimagepath4)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (() {
                  Routes().goto(
                      context: context,
                      route: Appotment(
                        imagepath: widget.imagepath,
                        shoprtitle: widget.shoptitle,
                      ));
                }),
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: demo.ralewaytext(
                          "Book Now", Colors.black, 18, FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget gallerybox({required String imagepath}) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagepath), fit: BoxFit.cover),
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget sideConatiner(
      {required double height, required width, required String text}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 41, 41, 41),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: demo.ralewaytext(text, Colors.white, 17, FontWeight.bold),
      ),
    );
  }
}
