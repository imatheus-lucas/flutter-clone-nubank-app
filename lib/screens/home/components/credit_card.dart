import 'package:flutter/material.dart';
import 'package:nubank/styles/colors_standart.dart';

class CreditCards extends StatelessWidget {
  const CreditCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: greyLight,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Row(children: const [
        Icon(Icons.credit_card, color: Colors.black),
        SizedBox(width: 12),
        Text("Meus Cartões", style: TextStyle(fontSize: 14)),
      ]),
    );
  }
}
