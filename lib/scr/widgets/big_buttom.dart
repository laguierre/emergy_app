import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BtnEmercency extends StatelessWidget {
  const BtnEmercency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        _BtnBackground(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 140, width: 40),
            FaIcon(FontAwesomeIcons.carCrash, color: Colors.white, size: 40),
            SizedBox(width: 20),
            Expanded(child: Text('Motor Accident',
              style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
            FaIcon(
                FontAwesomeIcons.chevronRight, color: Colors.white),
            SizedBox(width: 40),
          ],
        )
      ],
    );
  }
}

class _BtnBackground extends StatelessWidget {
  const _BtnBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
            )
          ],
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(colors: [
            Color(0xFF6989F5),
            Color(0xFF906EF5),
          ])),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
                right: -20,
                top: -20,
                child: FaIcon(FontAwesomeIcons.carCrash,
                    size: 150, color: Colors.white.withOpacity(0.2))),
          ],
        ),
      ),
    );
  }
}
