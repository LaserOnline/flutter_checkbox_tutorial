import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBox01 extends StatefulWidget {
  const CheckBox01({Key? key}) : super(key: key);

  @override
  State<CheckBox01> createState() => _CheckBox01State();
}

class _CheckBox01State extends State<CheckBox01> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Checkbox(
          value: isChecked,
          activeColor: Colors.black,
          tristate: true,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
              print("isChecked ${isChecked} \n newBool ${newBool}");
            });
          }),
    );
  }
}
