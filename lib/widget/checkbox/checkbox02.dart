import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Checkbox02 extends StatefulWidget {
  const Checkbox02({Key? key}) : super(key: key);

  @override
  State<Checkbox02> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Checkbox02> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CheckboxListTile(
          title: const Text(
            "Checkbox List Tile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          activeColor: Colors.red,
          checkColor: Colors.white,
          tileColor: Colors.black38,
          subtitle: const Text(
            "This is a subtitle",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          controlAffinity: ListTileControlAffinity.platform,
          // tristate: true,
          value: isChecked,
          onChanged: (newValue) {
            setState(() {
              isChecked = newValue;
              print("isChecked ${isChecked} \n newValue ${newValue}");
            });
          }),
    );
  }
}
