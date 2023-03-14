import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/styles/colors_standart.dart';

final List<dynamic> options = [
  {"icon": Icons.pix_outlined, "text": 'Área Pix', "isFirst": true},
  {"icon": MdiIcons.barcode, "text": 'Pagar'},
  {"icon": Icons.group_outlined, "text": 'Indicar amigos'},
  {"icon": Icons.payments_outlined, "text": 'Transferir'},
  {"icon": Icons.qr_code, "text": 'Depositar'},
  {"icon": Icons.credit_card_outlined, "text": 'Bloquear cartão'}
];

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: options
              .map((option) => MenuItem(item: option))
              .toList()
              .cast<Widget>(),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final dynamic item;

  const MenuItem({Key? key, required this.item})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 94,
        padding: (item['isFirst'] ?? false)
            ? const EdgeInsets.only(left: 16, right: 7)
            : const EdgeInsets.symmetric(horizontal: 7),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: greyLight, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                icon: Icon(item['icon']),
                onPressed: () {},
              ),
            ),
            Text(
              item['text'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ));
  }
}
