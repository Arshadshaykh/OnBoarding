import 'package:flutter/material.dart';
import 'package:on_boarding/img.dart';

class OBImageWidget extends StatefulWidget {
  String image;
  double height;
  OBImageWidget({Key? key, required this.image, required this.height})
      : super(key: key);

  @override
  State<OBImageWidget> createState() => _OBImageWidgetState();
}

class _OBImageWidgetState extends State<OBImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Center(
          child: Image.asset(
            OBcircle,
            height: 325,
          ),
        ),
        Center(
          child: Image.asset(OBmesseges,
            height: 270,
          ),
        ),

           Center(
             child: Image.asset(OBphone,
              height: 270,
                     ),
           ),
        
        Positioned(
          left: 84,
          top: 269,
          child: Image.asset(OBwoman,
            height: 158,
          ),
        ),
        Positioned(
          left: 315,
          top: 150,
          child: Image.asset(OBman,
            height: 275,
          ),
        ),
      ],
    );
  }
}
