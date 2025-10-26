import 'package:flutter/material.dart';

class InvertedCurveEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double curveSize = 20.0; // The size of the curve

    // Start at the top-left corner
    path.moveTo(0, 0);

    // Top-left concave curve
    // It starts at (0, 0), curves down to (curveSize, curveSize)
    path.quadraticBezierTo(
      0, // Control point X
      curveSize, // Control point Y
      curveSize, // End point X
      curveSize, // End point Y
    );

    // Straight line across the top (indented)
    path.lineTo(size.width - curveSize, curveSize);

    // Top-right concave curve
    // It starts at (size.width - curveSize, curveSize), curves up to (size.width, 0)
    path.quadraticBezierTo(
      size.width, // Control point X
      curveSize, // Control point Y
      size.width, // End point X
      0, // End point Y
    );

    // Right edge down to bottom
    path.lineTo(size.width, size.height);

    // Bottom edge
    path.lineTo(0, size.height);

    // Close path (connects back to 0, 0)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
