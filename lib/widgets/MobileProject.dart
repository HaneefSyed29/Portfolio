import 'package:flutter/material.dart';

import '../utils/Method.dart';

class MobileProject extends StatelessWidget {
  final VoidCallback? ontab;
  final String? image;

  MobileProject({this.ontab, this.image});

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    return Center(
      child: GestureDetector(
        onTap: ontab,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.36,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage(image!),
          ),
        ),
      ),
    );
  }
}
