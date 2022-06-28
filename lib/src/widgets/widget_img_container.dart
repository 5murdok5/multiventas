import 'package:flutter/material.dart';

Widget imgContainer(String urlImg,
    {double heighti = double.infinity,
    double widthi = double.infinity,
    String padhImage = '',
    bool showExpand = false,
    bool isfromAssets = false,
    Color? colorbg,
    double radius = 15}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: Container(
      height: heighti,
      width: widthi,
      decoration: BoxDecoration(
        color: colorbg ?? const Color.fromARGB(255, 238, 238, 238),
      ),
      child: isfromAssets
          ? Expanded(
              child: Image.asset(
                urlImg,
              ),
            )
          : Image.network(
              urlImg == ""
                  ? "https://cdn.stocksnap.io/img-thumbs/280h/hamburger-dinner_7QH4K6AESO.jpg"
                  : urlImg,
              fit: BoxFit.cover,
            ),
    ),
  );
}
