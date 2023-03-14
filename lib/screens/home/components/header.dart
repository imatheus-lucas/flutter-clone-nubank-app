import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/screens/home/controllers/home_controller.dart';
import 'package:nubank/styles/colors_standart.dart';

_options() {
  return Row(
    children: [
      GetBuilder(
          init: HomeController(),
          builder: (context) {
            return IconButton(
                onPressed: () {
                  context.showValue();
                },
                icon: Icon(
                  context.eyeValue
                      ? MdiIcons.eyeOutline
                      : MdiIcons.eyeOffOutline,
                  color: Colors.white,
                ));
          }),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
          )),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person_add_outlined,
            color: Colors.white,
          )),
    ],
  );
}

_profile() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(left: 20, top: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 141, 25, 219),
        borderRadius: BorderRadius.circular(80),
      ),
      child: IconButton(
        icon: const Icon(MdiIcons.accountOutline),
        color: Colors.white,
        onPressed: () {},
      ),
    ),
  );
}

_welcome() {
  return Container(
    margin: const EdgeInsets.only(left: 20, bottom: 20),
    child: const Text('Olá, Matheus',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
  );
}

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _profile(),
          _options(),
        ]),
        const SizedBox(height: 32),
        _welcome(),
      ]),
    );
  }
}
