import 'package:flutter/material.dart';

import '../../auth_service/sign_in.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Center(
          child: demo.ralewaytext('Payment', Colors.white, 30, FontWeight.bold),
        )
      ]),
    );
  }
}
