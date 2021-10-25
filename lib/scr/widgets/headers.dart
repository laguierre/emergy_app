import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({Key? key, required this.icon, required this.title, required this.subtitle, this.Color1 = const Color(0xff526bf6),
  this.Color2 = const Color(0xff67acF2)}) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;
  final Color Color1, Color2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _IconHeaderBackground(Color1: Color1, Color2: Color2),
        Positioned(
          top: -50,
            left: -70,
            child: FaIcon(
          icon,
          size: 250,
          color: Colors.white.withOpacity(0.2),
        )),
        Column(
          children: [
            const SizedBox(height: 80, width: double.infinity),
            Text(subtitle, style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.7)),),
            const SizedBox(height: 20),
            Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.7)),),
            const SizedBox(height: 50),
            FaIcon(
              icon,
              size: 60,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  const _IconHeaderBackground({
    Key? key, required this.Color1, required this.Color2,
  }) : super(key: key);

  final Color Color1, Color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color1,
                Color2,
              ]),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
    );
  }
}
