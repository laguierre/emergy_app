import 'package:emergy_app/scr/widgets/big_buttom.dart';
import 'package:emergy_app/scr/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: BtnEmercency(),
      ),
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
