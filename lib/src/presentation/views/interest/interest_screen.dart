import 'package:bulletos_v2/src/presentation/views/interest/components/body.dart';
import 'package:bulletos_v2/src/presentation/views/nav_bar/nar_bar.dart';
import 'package:flutter/material.dart';

class InterestScreen extends StatefulWidget {
  static String routeName = "/interest";

  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          TextButton(
              onPressed: (() =>
                  Navigator.pushNamed(context, NavBarWidget.routeName)),
              child: Text("Passer",
                  style: Theme.of(context).textTheme.headlineSmall))
        ],
      ),
      body: const Body(),
    ));
  }
}
