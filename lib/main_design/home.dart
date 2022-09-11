import 'package:afro_barber/animation_services/animatecontainer.dart';
import 'package:afro_barber/auth_service/sign_in.dart';
import 'package:afro_barber/main_design/barber_detaile.dart';
import 'package:afro_barber/navigator/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../App_service/text_helper.dart';

const String image1 = 'asset/m1.png';
const String image2 = 'asset/m2.png';
const String image3 = 'asset/m3.png';
const String image4 = 'asset/barb.png';

const String minimage1 = 'asset/barb.jpg';
const String minimage2 = 'asset/barb3.jpg';

const String subimagepath = 'asset/black man with tie hairstyle.jpg';
const String subimagepath1 = 'asset/dien with afro hairsty.jpg';
const String subimagepath2 = 'asset/barber profile3.jpg';

const String starbarber = 'asset/barbing.jpg';
const String starbarber1 = 'asset/barb two.jpg';
const String starbarber2 = 'asset/splass.jpg';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  static TextDemo demo = TextDemo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: demo.vtext('Afro Barber', Colors.white, 30, FontWeight.bold),
        // ignore: deprecated_member_use
        brightness: Brightness.dark,
        elevation: 0.0,
        leading: Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 41, 41, 41),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset('asset/menu.svg',
                height: 30, width: 30, color: Colors.white),
          ),
        ),

        actions: [
          Container(
            margin: const EdgeInsets.all(6),
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(5.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('asset/barber profil4.jpg'),
                  fit: BoxFit.cover),
              shape: BoxShape.circle,
              border: Border.all(style: BorderStyle.solid, color: Colors.white),
              // ignore: prefer_const_literals_to_create_immutables
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  demo.ralewaytext(
                      'Hey,  jim Respect', Colors.white, 20, FontWeight.bold),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'asset/hand-wave.svg',
                    height: 25,
                    width: 25,
                    color: Colors.orange,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 10),
                margin: const EdgeInsets.only(right: 80),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 2.0,
                          blurRadius: 10.0)
                    ]),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        label: demo.ralewaytext(
                            'Search', Colors.black45, 20.0, FontWeight.bold),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.black45,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                child: Center(
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        barlist(imagepath: image4, textpath: 'Style'),
                        const SizedBox(
                          width: 25,
                        ),
                        barlist(imagepath: image3, textpath: 'Saving'),
                        const SizedBox(
                          width: 25,
                        ),
                        barlist(imagepath: image1, textpath: 'Coloring'),
                        const SizedBox(
                          width: 25,
                        ),
                        barlist(imagepath: image2, textpath: 'Dying'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              demo.ralewaytext(
                  'Best barbers', Colors.white, 20, FontWeight.bold),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: grildeContainer(
                        imagepath: minimage2,
                        street: '786 St,',
                        shopname: 'Style barber ',
                        number: '4.0',
                        location: 'Newcastle united, England',
                        isopen: 'open',
                        israte: true,
                        color: true,
                        context: context),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: grildeContainer(
                        imagepath: minimage1,
                        street: '1086 St,',
                        shopname: 'Coloring barber ',
                        number: '4.9',
                        location: 'Califona, USA',
                        isopen: 'Close',
                        israte: false,
                        color: false,
                        context: context),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  demo.ralewaytext(
                      'Recommended barber', Colors.white, 20, FontWeight.bold),
                  demo.ralewaytext('More', Colors.grey, 12, FontWeight.bold),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              linerContainer(
                imagepath: starbarber,
                subimagepath: subimagepath,
                shopname: 'Star barber',
                number: '4.9',
                location: 'Torino, Itly',
                context: context,
                israte: false,
              ),
              const SizedBox(
                height: 20,
              ),
              linerContainer(
                imagepath: starbarber1,
                subimagepath: subimagepath1,
                shopname: 'Dying with barb',
                number: '4.9',
                location: 'Milan, Itly',
                context: context,
                israte: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget linerContainer({
    required BuildContext context,
    required String imagepath,
    required String shopname,
    required String subimagepath,
    required String location,
    required String number,
    required bool israte,
  }) {
    return Container(
        height: 110,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 41, 41, 41),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 90,
                      width: 120,
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagepath), fit: BoxFit.cover),
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        demo.ralewaytext(
                            shopname, Colors.white, 14, FontWeight.bold),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 20,
                            ),
                            demo.ralewaytext(
                                location, Colors.white54, 10, FontWeight.bold),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                israte
                                    ? const Icon(
                                        Icons.star_border,
                                        color: Colors.grey,
                                        size: 15,
                                      )
                                    : const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 16,
                                      ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: demo.ralewaytext(
                                  '  $number  ( 2.9 review )',
                                  Colors.grey,
                                  9,
                                  FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(top: 8, right: 8),
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(subimagepath),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget grildeContainer(
      {required String imagepath,
      required String shopname,
      required String location,
      required String number,
      required String isopen,
      required bool color,
      required bool israte,
      required String street,
      required BuildContext context}) {
    return InkWell(
      onTap: () {
        Routes().goto(
            context: context,
            route: BarberDetails(
                street: street,
                imagepath: imagepath,
                shoptitle: shopname,
                rate: israte,
                location: location,
                ratenumber: number));
      },
      child: Hero(
        tag: imagepath,
        transitionOnUserGestures: false,
        child: BoxWidget(
          size: Size(200, 230),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 41, 41, 41),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              border:
                  Border.all(style: BorderStyle.solid, color: Colors.white24)),
          child: Wrap(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagepath), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      color: color
                          ? Colors.green.shade900.withOpacity(0.8)
                          : const Color.fromARGB(255, 93, 44, 28)
                              .withOpacity(0.8),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: demo.ralewaytext(
                          isopen,
                          color
                              ? Colors.green
                              : Color.fromARGB(255, 217, 242, 43),
                          16,
                          FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    demo.ralewaytext(
                        shopname, Colors.white, 14, FontWeight.bold),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        demo.ralewaytext(
                            location, Colors.white54, 10, FontWeight.bold),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            israte
                                ? const Icon(
                                    Icons.star_border,
                                    color: Colors.grey,
                                    size: 15,
                                  )
                                : const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 15,
                                  ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: demo.ralewaytext('$number  ( 2.9 review )',
                                Colors.grey, 8, FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget barlist({required String imagepath, required textpath}) {
    return Expanded(
      child: Column(
        children: [
          Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 41, 41, 41),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 4.0)
                  ]),
              child: Image.asset(
                imagepath,
                height: 50,
                width: 50,
                color: Colors.white,
              )),
          const SizedBox(
            height: 20,
          ),
          demo.ralewaytext(textpath, Colors.white, 16, FontWeight.bold)
        ],
      ),
    );
  }

//   Widget clipper(){
//     return Flexible(
//           child: ClipPath(

//             child: Container(
//             height: size.height * .75,
//             decoration: BoxDecoration(gradient: gradient),
//             child: authForm(),
//             ),
//           ),
//         );
//   }
}




// class HeroApp extends StatelessWidget {
//   const HeroApp(Key? key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HeroExample(),
//     );
//   }
// }

// class HeroExample extends StatelessWidget {
//   const HeroExample(key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Hero Sample')),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const SizedBox(height: 20.0),
//           ListTile(
//             leading: const Hero(
//               tag: 'hero-rectangle',
//               child: BoxWidget(size: Size(50.0, 50.0)),
//             ),
//             onTap: () => _gotoDetailsPage(context),
//             title: const Text(
//               'Tap on the icon to view hero animation transition.',
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _gotoDetailsPage(BuildContext context) {
//     Navigator.of(context).push(MaterialPageRoute<void>(
//       builder: (BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: const Text('Second Page'),
//         ),
//         body: const Center(
//           child: Hero(
//             tag: 'hero-rectangle',
//             child: BoxWidget(size: Size(200.0, 200.0)),
//           ),
//         ),
//       ),
//     ));
//   }
// }

// class BoxWidget extends StatelessWidget {
//   // ignore: use_key_in_widget_constructors
//   const BoxWidget( { Key? key, required this.size});

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size.width,
//       height: size.height,
//       color: Colors.blue,
//     );
//   }
// }
