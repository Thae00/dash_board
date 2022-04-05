import 'package:flutter/material.dart';

class CircleClip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: ClipPath(
            clipper: CustomHalfCircleClipper(),
            child: Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(150.0)),
            ),
          ),
        ),
        Positioned(
          top: 3,
          right: 3,
          left: 3,
          child: ClipPath(
            clipper: CustomHalfCircleClipper(),
            child: Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                  color: Color(0xff115767),
                  borderRadius: BorderRadius.circular(150.0)),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomHalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
