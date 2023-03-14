import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/screens/home/controllers/home_controller.dart';

_balanceHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Text(
        'Conta',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      Icon(
        MdiIcons.chevronRight,
      )
    ],
  );
}

_balanceValue() {
  return GetBuilder(
      init: HomeController(),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.only(top: 14),
          child: Text(
            context.balance,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        );
      });
}

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_balanceHeader(), _balanceValue()]));
  }
}
