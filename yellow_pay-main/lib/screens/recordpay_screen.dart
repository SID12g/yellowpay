import 'package:flutter/material.dart';
import 'package:yellow_pay/widgets/roundshape_recordpay_screen.dart';

class RecordPayScreen extends StatelessWidget {
  const RecordPayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _RecordPayScreenState(),
    );
  }
}

class _RecordPayScreenState extends StatefulWidget {
  const _RecordPayScreenState({Key? key}) : super(key: key);

  @override
  __RecordPayScreenState createState() => __RecordPayScreenState();
}

class __RecordPayScreenState extends State<_RecordPayScreenState> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        RecordPayUserView(),
        Expanded(
          child: SingleChildScrollView(
            child: RecordPay(),
          ),
        ),
      ],
    );
  }
}

class RecordPayUserView extends StatelessWidget {
  const RecordPayUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(240, 70, 0, 0),
      child: const Row(
        children: [
          // add a SizedBox to add space between Icon and Text
          Icon(
            Icons.history,
            size: 80,
          ),
          Text(
            '결제 기록',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class RecordPay extends StatelessWidget {
  const RecordPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 250),
      child: Column(
        children: [
          const RecordPayCard(
            story: '마이쮸(사과) 돼지바',
            date: 20230512,
            icon: Icons.check,
            admit: true,
            cost: 2300,
          ),
          Transform.translate(
            offset: const Offset(0, 40),
            child: const RecordPayCard(
              story: '마이쮸(사과) 돼지바',
              date: 20230512,
              icon: Icons.check,
              admit: true,
              cost: 2300,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 80),
            child: const RecordPayCard(
              story: '마이쮸(사과) 돼지바',
              date: 20230512,
              icon: Icons.check,
              admit: true,
              cost: 2300,
            ),
          ),
        ],
      ),
    );
  }
}
