import 'package:flutter/material.dart';
import 'package:yellow_pay/screens/pay_screen.dart';
import 'package:yellow_pay/screens/recordpay_screen.dart';
import 'package:yellow_pay/screens/setting_screen.dart';
import 'package:yellow_pay/widgets/bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cheesepay',
      theme: ThemeData(
        primaryColor: Colors.black,
        // highlightColor: Colors.white,
      ),
      home: const DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              RecordPayScreen(),
              PayScreen(),
              SettingScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
