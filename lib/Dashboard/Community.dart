import 'dart:math';

import 'package:flutter/material.dart';
import 'package:womensafteyhackfair/Dashboard/Articles%20-%20SafeCarousel/AllArticles.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/DashAppbar.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/Emergency.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/LiveSafe.dart';
import 'package:womensafteyhackfair/Dashboard/Articles%20-%20SafeCarousel/SafeCarousel.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/SafeHome.dart';
import 'package:womensafteyhackfair/Dashboard/DashWidgets/SuperAlert.dart';

class Community extends StatefulWidget {
  const Community({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Community> {
  int quoteIndex = 0;
  @override
  void initState() {
    super.initState();
    getRandomInt(false);
  }

  getRandomInt(fromClick) {
    Random rnd = Random();

    quoteIndex = rnd.nextInt(4);
    if (mounted && fromClick) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashAppbar(
          getRandomInt: getRandomInt,
          quoteIndex: quoteIndex,
        ),
        Expanded(
             child:   SafeCarousel(),
          ),
      ]
      
    );
  }
}

