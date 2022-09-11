// ignore_for_file: camel_case_types

import 'package:afro_barber/main_design/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../App_service/text_helper.dart';

import '../animation_services/bottom_bar.dart';
import '../navigator/route.dart';

const String image1 = 'asset/barber profil1.jpg';
const String image2 = 'asset/barber profil4.jpg';
const String image3 = 'asset/barber profile 5.jpg';
const String image4 = 'asset/barber profile3.jpg';
const String image5 = 'asset/barber profile2.jpg';
const String image6 = 'asset/dien with afro hairsty.jpg';
const String image7 = 'asset/black man with tie hairstyle.jpg';
const String profileimage = 'asset/barb2.jpg';

class Find_barber extends StatefulWidget {
  const Find_barber({Key? key}) : super(key: key);

  @override
  State<Find_barber> createState() => _Find_barberState();
}

TextDemo demo = TextDemo();

class _Find_barberState extends State<Find_barber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(profileimage), fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.topLeft,
              child: SafeArea(
                child: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(
                      'asset/menu.svg',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 + 60,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 41, 41, 41),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 120,
                    ),
                    Center(
                      child: demo.ralewaytext('Find the best Barber shope',
                          Colors.white, 25, FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: demo.ralewaytext(
                          'find all your friend in one place by searching your contact list',
                          Colors.white54,
                          10,
                          FontWeight.w700),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 60, left: 105),
                          color: Colors.transparent,
                          height: 145,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(image1),
                                        fit: BoxFit.cover),
                                    border: Border.all(
                                        style: BorderStyle.solid,
                                        width: 2.0,
                                        color: Colors.white),
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ),
                              Positioned(
                                left: 30,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(image2),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          width: 2.0,
                                          color: Colors.white),
                                      color: Colors.transparent,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                left: 60,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(image3),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          width: 2.0,
                                          color: Colors.white),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                left: 90,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(image4),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          width: 2.0,
                                          color: Colors.white),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                left: 120,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(image5),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          width: 2.0,
                                          color: Colors.white),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(image6),
                                          fit: BoxFit.cover),
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          width: 2.0,
                                          color: Colors.white),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                left: 100,
                                top: 200,
                                child: Container(
                                  height: 200,
                                  width: 200,
                                  padding: const EdgeInsets.all(5.0),
                                  alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/barber profil4.jpg'),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          color: Colors.black),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                            // offset: Offset.zero,
                                            blurRadius: 25.3,
                                            color: Colors.grey,
                                            spreadRadius: 1.0)
                                      ]),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.black45,
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          width: 2.0,
                                          color: Colors.white),
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: demo.ralewaytext('600+',
                                        Colors.white54, 12, FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: demo.ralewaytext(
                              '700 Thousand people avaliable',
                              Colors.white54,
                              18,
                              FontWeight.bold),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (() {
                        Routes().goto(
                            context: context,
                            route: MyCustomBottomNavigationBar());
                      }),
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.all(60),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: demo.ralewaytext(
                              "Continue", Colors.black, 18, FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 120,
            top: 200,
            child: Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('asset/barber profil4.jpg'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                  border:
                      Border.all(style: BorderStyle.solid, color: Colors.black),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        // offset: Offset.zero,DF
                        blurRadius: 25.3,
                        color: Colors.grey,
                        spreadRadius: 1.0)
                  ]),
            ),
          ),
        ],
      ),
    ));
  }
}
