import 'package:flutter/material.dart';
import 'package:nubank/styles/colors_standart.dart';

_card() {
  return (Container(
    decoration: BoxDecoration(
      color: greyLight,
      borderRadius: BorderRadius.circular(16),
    ),
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: const EdgeInsets.only(right: 34),
            child: Row(
              children: const [
                Icon(Icons.rotate_90_degrees_ccw),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('Assistente de\npagamentos',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )),
        Container(
            padding:
                const EdgeInsets.only(left: 8, right: 8, bottom: 4, top: 4),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text("Novo", style: TextStyle(color: Colors.white)))
      ],
    ),
  ));
}

_header() {
  return Container(
    margin: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Acompanhe também',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

class AlsoAccompanies extends StatelessWidget {
  const AlsoAccompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [_header(), _card()]),
    );
  }
}
