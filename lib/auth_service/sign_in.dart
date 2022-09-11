import 'package:afro_barber/App_service/text_helper.dart';
import 'package:afro_barber/auth_service/verification.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../animation_services/checkbox.dart';
import '../animation_services/dropdown.dart';
import '../navigator/route.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

TextDemo demo = TextDemo();

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
          labelStyle: TextStyle(
              fontFamily: 'Raleway', fontSize: 20, fontWeight: FontWeight.w600),
          suffixIcon: Icon(icon),
        ),
      ));
}

Widget phonetextfild({required String label, required IconData icon}) {
  return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      width: double.infinity,
      child: TextField(
        // ignore: prefer_const_constructors
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(6)),
              borderSide: BorderSide.none),
          filled: true,
          labelText: label,
          labelStyle: TextStyle(
              fontFamily: 'Raleway', fontSize: 20, fontWeight: FontWeight.w600),
          suffixIcon: Icon(icon),
        ),
      ));
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
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
                height: 25,
              ),
              textfild(label: "Email", icon: Icons.email),
              const SizedBox(
                height: 25,
              ),
              textfild(label: "UserName", icon: Icons.person),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(110, 99, 99, 101),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                        )),
                    height: 56,
                    width: MediaQuery.of(context).size.width / 2 - 100,
                    child: const Center(
                      child: DropdownButtonExample(),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2 + 100,
                        child: phonetextfild(
                            label: "phone number", icon: Icons.phone)),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              textfild(label: "Passworld", icon: Icons.visibility),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Checkb(),
                  RichText(
                    text: const TextSpan(
                      text: 'by signing you are agreeing to our',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 15,
                          color: Colors.white54),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' terms',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                        TextSpan(
                            text: '\n &',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.white54)),
                        TextSpan(
                            text: ' condition',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                        TextSpan(
                            text: ' and',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.white54)),
                        TextSpan(
                            text: ' privacy policy',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (() {
                  Routes().goto(context: context, route: const Verify());
                }),
                child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: demo.ralewaytext(
                        "Continue", Colors.black, 18, FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'joined Us before? ',
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 15,
                        color: Colors.white54),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
