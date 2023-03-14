import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

_button() {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
    decoration: BoxDecoration(
        color: Colors.grey[200], borderRadius: BorderRadius.circular(50)),
    child: Text(
      'Parcelar compras',
      style: TextStyle(
          color: Colors.grey[800], fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

_content() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: Text(
          'Fatura atual',
          style: TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12, bottom: 12),
        child: Text(
          'R\$ 1.000,00',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          'Limite disponível de R\$ 1.000,00',
          style: TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}

_header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text(
        'Cartao de crédito',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      Icon(
        MdiIcons.chevronRight,
      )
    ],
  );
}

class Credit extends StatelessWidget {
  const Credit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_header(), _content(), _button()],
      ),
    );
  }
}
