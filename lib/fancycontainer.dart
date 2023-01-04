import 'package:flutter/material.dart';

class FancyContainer extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final double radius;

  const FancyContainer(
      {super.key,
      required this.color,
      required this.height,
      required this.width,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
