import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/screens/home/components/ad_cards.dart';
import 'package:nubank/screens/home/components/also_accompanies.dart';
import 'package:nubank/screens/home/components/balance.dart';
import 'package:nubank/screens/home/components/credit.dart';
import 'package:nubank/screens/home/components/credit_card.dart';
import 'package:nubank/screens/home/components/header.dart';
import 'package:nubank/screens/home/components/loan.dart';
import 'package:nubank/screens/home/components/menu.dart';
import 'package:nubank/styles/colors_standart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(children: const [
            Header(),
            Balance(),
            Menu(),
            CreditCards(),
            AdCards(),
            Divider(thickness: 1.4),
            Credit(),
            Divider(thickness: 1.4),
            AlsoAccompanies(),
            Divider(thickness: 1.4),
            Loan()
          ]),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: backgroundColor,
            statusBarIconBrightness: Brightness.light,
          ),
        ));
  }
}
