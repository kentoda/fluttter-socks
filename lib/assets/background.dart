import 'package:flutter/material.dart';
import 'hex_color.dart';

class AppBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final height = constraint.maxHeight;
      final width = constraint.maxWidth;
      return Stack(
        children: <Widget>[
          Container(
            color: HexColor('#FFFFFF'),
          ),
          Positioned(
            right: (height / 9 - height / 2),
            top: -height * 0.09,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow.withOpacity(0.3)),
            ),
          ),
          Positioned(
            top: height * 0.60,
            right: height * 0.09,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow.withOpacity(0.4)),
            ),
          ),
          Positioned(
            top: -height * 0.20,
            left: -height * 0.39,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow.withOpacity(0.2)),
            ),
          ),
        ],
      );
    });
  }
}
