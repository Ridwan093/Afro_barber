import 'package:afro_barber/auth_service/sign_in.dart';
import 'package:afro_barber/navigator/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../App_service/text_helper.dart';

class Loggin extends StatelessWidget {
  const Loggin({Key? key}) : super(key: key);
  static TextDemo demo = TextDemo();

  Widget textfild({required String label, required IconData icon}) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        child: TextField(
          // ignore: prefer_const_constructors
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                borderSide: BorderSide.none),
            filled: true,
            labelText: label,
            labelStyle: const TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w600),
            suffixIcon: Icon(icon),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 200,
                    child: SvgPicture.asset(
                      'asset/undraw.svg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                demo.vtext('Afro Barber', Colors.white54, 40, FontWeight.w600),
                const SizedBox(
                  height: 20,
                ),
                textfild(label: "Email", icon: Icons.email),
                const SizedBox(
                  height: 20,
                ),
                textfild(label: "Passworld", icon: Icons.visibility),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: demo.ralewaytext(
                      "forgot passworld", Colors.white24, 18, FontWeight.w700),
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (() {
                        Routes()
                            .goto(context: context, route: const Register());
                      }),
                      child: Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: demo.ralewaytext(
                              "log in", Colors.black, 18, FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            width: 170,
                            color: Colors.white54,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        demo.ralewaytext(
                            "OR", Colors.white54, 20, FontWeight.bold),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            width: 170,
                            color: Colors.white54,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'asset/Google.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        demo.ralewaytext("log in with google", Colors.white54,
                            18, FontWeight.bold),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'New to Afro barber? ',
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 15,
                            color: Colors.white54),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
