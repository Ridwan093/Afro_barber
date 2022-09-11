import 'package:afro_barber/main_design/find_barber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Appotment extends StatelessWidget {
  final String imagepath;
  final String shoprtitle;
  const Appotment({Key? key, required this.imagepath, required this.shoprtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
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
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                    ),
                  ),
                  demo.ralewaytext('Appoitntment Details', Colors.white, 18,
                      FontWeight.bold),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 41, 41, 41),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 41, 41, 41),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Hero(
                          tag: imagepath,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            height: 65,
                            width: 90,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imagepath),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // spacing: 30,
                              children: [
                                demo.ralewaytext("Style barber shop",
                                    Colors.white, 14, FontWeight.bold),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.av_timer,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                demo.ralewaytext('10.00 Am', Colors.grey, 10,
                                    FontWeight.bold)
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                demo.ralewaytext('Monday, july 12', Colors.grey,
                                    10, FontWeight.bold)
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 10),
                        alignment: Alignment.topRight,
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 170, 158, 158),
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: demo.ralewaytext(
                              "EDITE", Colors.red, 11, FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 18, top: 10),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(profileimage),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            demo.ralewaytext("jim Respect", Colors.white, 16,
                                FontWeight.bold),
                            const SizedBox(
                              height: 6,
                            ),
                            demo.ralewaytext('professional barber', Colors.grey,
                                12, FontWeight.bold),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(23, 255, 255, 255),
                              radius: 20,
                              child: Center(
                                child: SvgPicture.asset(
                                  'asset/message.svg',
                                  height: 20.0,
                                  width: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  Color.fromARGB(23, 255, 255, 255),
                              child: Center(
                                  child: Icon(
                                Icons.call,
                                size: 20,
                                color: Colors.white,
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 41, 41, 41),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  demo.ralewaytext(
                      "Service List", Colors.white, 16, FontWeight.bold),
                  const SizedBox(
                    height: 20,
                  ),
                  seviclist(
                      servicetitle: "Hair cut & head massage",
                      serviceprice: "\$300",
                      time: "40 min"),
                  const Divider(
                    color: Colors.grey,
                  ),
                  seviclist(
                      servicetitle: "Hair Coloring",
                      serviceprice: "\$500",
                      time: "45 min"),
                  const Divider(
                    color: Colors.grey,
                  ),
                  seviclist(
                      servicetitle: "Saving",
                      serviceprice: "\$500",
                      time: "46 min"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 41, 41, 41),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  demo.ralewaytext(
                      "1 Service Selected", Colors.grey, 10, FontWeight.bold),
                  seleted(
                      pd: false,
                      isminut: true,
                      servicetitle: "Saving",
                      serviceprice: "\$500",
                      time: "45 min",
                      size: 15.0),
                  seleted(
                      pd: true,
                      isminut: false,
                      servicetitle: "Total",
                      serviceprice: "\$500",
                      time: "",
                      size: 20.0),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 41, 41, 41),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Center(
                    child: demo.ralewaytext(
                        'Book Now', Colors.white, 12, FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 41, 41, 41),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Center(
                    child: demo.ralewaytext(
                        'Reschedule', Colors.white, 12, FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 40,
                width: 220,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Center(
                  child: demo.ralewaytext(
                      'Buy Now', Colors.black, 12, FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget seviclist(
      {required String servicetitle,
      required String serviceprice,
      required String time}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: demo.ralewaytext(
                  servicetitle, Colors.white, 12, FontWeight.bold),
            ),
            Expanded(
              flex: 1,
              child: demo.ralewaytext(
                  serviceprice, Colors.red, 15, FontWeight.bold),
            ),
            const Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(23, 255, 255, 255),
                child: Center(
                    child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.white,
                )),
              ),
            ),
          ],
        ),
        demo.ralewaytext(time, Colors.grey, 9, FontWeight.bold),
      ],
    );
  }

  Widget seleted(
      {required String servicetitle,
      required String serviceprice,
      required String time,
      required double size,
      required bool isminut,
      required bool pd}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: demo.ralewaytext(
                  servicetitle, Colors.white, 12, FontWeight.bold),
            ),
            Expanded(
                flex: 1,
                child: Text(
                  serviceprice,
                  style: TextStyle(
                      fontSize: size,
                      fontFamily: "Raleway",
                      color: Colors.red,
                      decoration:
                          pd ? TextDecoration.underline : TextDecoration.none),
                )),
            const Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: Center(
                    child: Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.transparent,
                )),
              ),
            ),
          ],
        ),
        isminut
            ? demo.ralewaytext(time, Colors.grey, 9, FontWeight.bold)
            : const SizedBox(),
      ],
    );
  }
}
