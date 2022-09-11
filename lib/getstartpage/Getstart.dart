import 'dart:ui';

import 'package:afro_barber/App_service/text_helper.dart';
import 'package:flutter/material.dart';

import '../auth_service/login.dart';
import '../navigator/route.dart';

class Getstartp extends StatelessWidget {
  const Getstartp({Key? key}) : super(key: key);

  @override
  static TextDemo demo = TextDemo();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/barb two.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  demo.ralewaytext(
                      "fine the perfect barberman \n     "
                      "    at your door step",
                      Colors.white54,
                      20,
                      FontWeight.w700),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() {
                      Routes().goto(context: context, route: const Loggin());
                    }),
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: demo.ralewaytext('Get started', Colors.black38,
                              19, FontWeight.w800)),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
