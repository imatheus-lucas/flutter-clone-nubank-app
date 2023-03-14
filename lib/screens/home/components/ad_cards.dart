import 'package:flutter/material.dart';
import 'package:nubank/styles/colors_standart.dart';

class AdCards extends StatefulWidget {
  const AdCards({super.key});

  @override
  State<AdCards> createState() => _AdCardsState();
}

class _AdCardsState extends State<AdCards> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [_card(), _card(), _card()]),
    );
  }

  _card() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 10),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: greyLight,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: "Conheça o novo ", style: TextStyle(color: Colors.black)),
          TextSpan(
              text: "Assistente de\n pagamentos ",
              style: TextStyle(color: Colors.purple)),
          TextSpan(text: "do Nubank", style: TextStyle(color: Colors.black))
        ]),
      ),
    );
  }
}
