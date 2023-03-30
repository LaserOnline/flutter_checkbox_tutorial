import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_checkbox_tutorial/widget/checkbox/checkbox01.dart';
import 'package:flutter_checkbox_tutorial/widget/checkbox/checkbox02.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckBox01(),
            Checkbox02(),
          ],
        ),
      ),
      backgroundColor: Colors.grey[400],
    );
  }
}
