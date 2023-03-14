import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

_header() {
  return Container(
    margin: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Empréstimo',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Icon(
          MdiIcons.chevronRight,
        )
      ],
    ),
  );
}

class Loan extends StatelessWidget {
  const Loan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(),
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Valor disponivel de ate",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              Text("R\$ 1.000,00",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        )
      ],
    );
  }
}
