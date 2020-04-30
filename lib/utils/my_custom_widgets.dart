import 'package:flutter/material.dart';

class MyCustomWidgets {
  Container buildContainerWithImage(
      {@required double height,
      @required String assetImage,
      double width = 0,
      double borderRadiusBottomLeft = 0,
      double borderRadiusTopLeft = 0,
      double borderRadiusBottomRight = 0,
      double borderRadiusTopRight = 0,
      double shadowRadius = 3
      }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetImage),
            fit: BoxFit.fill,

          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(borderRadiusBottomLeft),
            bottomRight: Radius.circular(borderRadiusBottomRight),
            topRight: Radius.circular(borderRadiusTopRight),
            topLeft: Radius.circular(borderRadiusTopLeft),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: shadowRadius,
                spreadRadius: shadowRadius,
                color: Color(0x80000000))
          ]),
    );
  }
}
