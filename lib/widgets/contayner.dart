
import 'package:flutter/material.dart';

class Conteyner extends StatelessWidget {
  const Conteyner({super.key, required this.image1, required this.ontap1});
  final String image1;
  final Function? ontap1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: Image.asset(image1),
    );
  }
}
