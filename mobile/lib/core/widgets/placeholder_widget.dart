import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final String text;
  const PlaceholderWidget({Key? key, this.text = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text.isEmpty ? 'Placeholder' : text));
  }
}
