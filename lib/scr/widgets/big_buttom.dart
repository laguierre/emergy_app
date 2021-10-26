import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BtnEmercency extends StatelessWidget {
  BtnEmercency({
    Key? key,
    this.icon = FontAwesomeIcons.circle,
    required this.text,
    this.Color1 = const Color(0xFF6989F5),
    this.Color2 = const Color(0xFF906EF5),
    required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color Color1;
  final Color Color2;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: [
          _BtnBackground(
            Color1: Color1,
            Color2: Color2,
            icon: icon,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 140, width: 40),
              FaIcon(icon, color: Colors.white, size: 40),
              const SizedBox(width: 20),
              Expanded(
                  child: Text(text,
                      style: const TextStyle(color: Colors.white, fontSize: 18))),
              const FaIcon(FontAwesomeIcons.chevronRight, color: Colors.white),
              const SizedBox(width: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class _BtnBackground extends StatelessWidget {
  const _BtnBackground(
      {Key? key,
      required this.Color1,
      required this.Color2,
      required this.icon})
      : super(key: key);

  final IconData icon;
  final Color Color1;
  final Color Color2;

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
            Color1,
            Color2,
          ])),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
                right: -20,
                top: -20,
                child: FaIcon(icon,
                    size: 150, color: Colors.white.withOpacity(0.2))),
          ],
        ),
      ),
    );
  }
}
