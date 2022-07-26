import 'package:flutter/material.dart';


class GradientBar extends StatelessWidget {
  const GradientBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF59C0E5),
            Color(0xFFB99DFD),
          ],
          begin: FractionalOffset(0.0, 0.8),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp
        )
      ),
      alignment: const Alignment(-0.9, -0.6),

      child: Container(
        margin: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        width: double.infinity,
        child: const Text(
          "Flight Listing",
          textAlign: TextAlign.center, 
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.normal
          ),
        ),
      )
      ,

    );
  }
}