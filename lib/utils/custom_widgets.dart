import 'package:flutter/material.dart';

class CustomWidgets {
  Container buildContainerWithImage(
      {double height = 0,
      @required String assetImage,
      double borderRadiusBottomLeft = 0,
      double borderRadiusTopLeft = 0,
      double borderRadiusBottomRight = 0,
      double borderRadiusTopRight = 0}) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetImage),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(borderRadiusBottomLeft),
            bottomRight: Radius.circular(borderRadiusBottomRight),
            topRight: Radius.circular(borderRadiusTopRight),
            topLeft: Radius.circular(borderRadiusTopLeft),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(1, 1),
                blurRadius: 3,
                spreadRadius: 3,
                color: Color(0x80000000))
          ]),
    );
  }
}
