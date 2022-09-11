import 'package:afro_barber/main_design/home.dart';
import 'package:flutter/material.dart';

class Routes {
  goto({required BuildContext context, required final route}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: ((context) => Container(
                  child: route,
                ))));
  }
}
