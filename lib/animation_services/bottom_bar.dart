import 'dart:ui';
import 'package:afro_barber/main_design/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCustomBottomNavigationBar extends StatefulWidget {
  @override
  MyCustomBottomNavigationBarState createState() =>
      MyCustomBottomNavigationBarState();
}

class MyCustomBottomNavigationBarState
    extends State<MyCustomBottomNavigationBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        height: size.width * .155,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                // print(index);
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: size.width * .014),
                  IconButton(
                      onPressed: null,
                      icon: listOfIcons[index],
                      iconSize: size.width * .076,
                      color: Colors.black),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      top: index == currentIndex ? 0 : size.width * .029,
                      right: size.width * .0422,
                      left: size.width * .0422,
                    ),
                    width: size.width * .153,
                    height: index == currentIndex ? size.width * .014 : 0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
            // color: Colors.deepPurpleAccent,
            child: container(currentIndex, size)),
      ),
    );
  }

  container(currentindex, Size size) {
    if (currentIndex == 0) {
      return AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(minutes: 1),
          child: const Homepage());
    } else if (currentIndex == 1) {
      return Container(
        height: double.infinity,
        color: Colors.black,
        child: Center(
          child: SvgPicture.asset(
            'asset/verified.svg',
            width: 200.0,
            height: 200.0,
          ),
        ),
      );
    } else if (currentIndex == 2) {
      return Container(
        height: double.infinity,
        color: Colors.red,
        child: const Center(child: Text('Account')),
      );
    } else if (currentIndex == 3) {
      return Container(
        height: double.infinity,
        color: Colors.blue,
        child: const Center(child: Text('Message')),
      );
    }
  }

  List<Widget> listOfIcons = [
    SvgPicture.asset('asset/menu.svg', height: 20.0, width: 20.0),
    SvgPicture.asset('asset/scissors.svg', height: 20.0, width: 20.0),
    SvgPicture.asset('asset/account.svg', height: 20.0, width: 20.0),
    SvgPicture.asset('asset/message.svg', height: 20.0, width: 20.0),
  ];
}
