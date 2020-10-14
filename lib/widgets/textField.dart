import 'package:flutter/material.dart';

class Text_box extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String icon;
  const Text_box({
    Key key,
    this.hintText,
    @required this.labelText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        print(text);
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        // prefix: Image.asset(icon, height: 20.0),
      ),
    );
  }
}
