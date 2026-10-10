import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '|',
      style: TextStyle(fontSize: 35,color: Colors.grey.shade400),
    );
  }
}
