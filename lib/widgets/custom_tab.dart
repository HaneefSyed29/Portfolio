import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String title;
  const CustomTab({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
    );
  }
}
