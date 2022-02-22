import 'package:animate_do/animate_do.dart';
import 'package:emergy_app/scr/widgets/big_buttom.dart';
import 'package:emergy_app/scr/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
      ItemBoton(FontAwesomeIcons.carCrash, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.biking, 'Awards', const Color(0xff317183),
          const Color(0xff46997D)),
      ItemBoton(FontAwesomeIcons.carCrash, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.biking, 'Awards', const Color(0xff317183),
          const Color(0xff46997D)),
      ItemBoton(FontAwesomeIcons.carCrash, 'Motor Accident',
          const Color(0xff6989F5), const Color(0xff906EF5)),
      ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency',
          const Color(0xff66A9F2), const Color(0xff536CF6)),
      ItemBoton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
          const Color(0xffF2D572), const Color(0xffE06AA3)),
      ItemBoton(FontAwesomeIcons.biking, 'Awards', const Color(0xff317183),
          const Color(0xff46997D)),
    ];

    List<Widget> itemMap = items
        .map((item) => FadeInLeft(
      duration: const Duration(milliseconds: 200),
          child: Column(
            children: [
              BtnEmercency(
                text: item.texto,
                onPress: () {},
                icon: item.icon,
                Color1: item.color1,
                Color2: item.color2,
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ))
        .toList();

    return Scaffold(
      body: Stack(children: [
        Container(
          margin: const EdgeInsets.only(top: 200),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [const SizedBox(height: 80.0), ...itemMap],
          ),
        ),
        const _Header(),
      ]),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const IconHeader(
            icon: FontAwesomeIcons.plus,
            title: 'Asistencia Médica',
            subtitle: 'Haz solocitado'),
        Positioned(
            right: 0,
            top: 45.0,
            child: RawMaterialButton(
              onPressed: (){},
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15.0),
              child: const FaIcon(FontAwesomeIcons.ellipsisV,
              color: Colors.white),
            ))
      ],
    );
  }
}



class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconHeader(
      title: 'Asistencia Médica',
      subtitle: 'Haz solicitado',
      icon: FontAwesomeIcons.plusCircle,
    );
  }
}
