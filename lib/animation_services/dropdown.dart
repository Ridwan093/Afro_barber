import 'package:flutter/material.dart';

const List<String> list = <String>[
  'asset/england.png',
  'asset/flag.jpg',
  'asset/flag2.png',
  'asset/flag3.png',
  'asset/flag4.png',
  'asset/nigeria.png'
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample();

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      underline: Container(
        height: 0,
        color: Colors.white54,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Image.asset(
                    value,
                    height: 28,
                    width: 28,
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ));
      }).toList(),
    );
  }
}
