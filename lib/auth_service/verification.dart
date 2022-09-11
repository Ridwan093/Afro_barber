import 'package:afro_barber/auth_service/sign_in.dart';
import 'package:afro_barber/main_design/find_barber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../App_service/text_helper.dart';
import '../navigator/route.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);
  static TextDemo demo = TextDemo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 200,
                  child: SvgPicture.asset(
                    'asset/verified.svg',
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: demo.ralewaytext(
                    "OTP Verification", Colors.white54, 35, FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: const TextSpan(
                    text:
                        'we are sending code to this +2349057847565 if\n the number is not correct change the  ',
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 15,
                        color: Colors.white54),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'number',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(child: codebox()),
                    Expanded(child: codebox()),
                    Expanded(child: codebox()),
                    Expanded(child: codebox()),
                    Expanded(child: codebox()),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: demo.ralewaytext(
                    'Resend sms', Colors.white38, 12, FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (() {
                  Routes().goto(context: context, route: const Find_barber());
                }),
                child: Container(
                  margin: EdgeInsets.all(35),
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: demo.ralewaytext(
                        "Verify", Colors.black, 18, FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget codebox() {
    return Container(
      width: 50,
      margin: EdgeInsets.all(12),
      child: const TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.white54),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            label: Text(
              "0",
              textAlign: TextAlign.center,
            ),
            hintText: '0',
            labelStyle: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                color: Colors.white54,
                fontSize: 35)),
      ),
    );
  }
}
