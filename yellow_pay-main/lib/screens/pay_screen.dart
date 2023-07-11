import 'package:flutter/material.dart';
import 'package:yellow_pay/widgets/paycard_shape.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          LogoWidget(),
          proFile(),
          Expanded(
            child: SingleChildScrollView(
              child: CardsWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

class proFile extends StatelessWidget {
  const proFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
      child: const Row(
        children: [
          Icon(
            Icons.add_card_rounded,
            size: 40,
          ),
          SizedBox(
              width: 190), // add a SizedBox to add space between Icon and Text
          Text(
            '치치즈님',
            style: TextStyle(fontSize: 20),
          ),
          Icon(
            Icons.account_circle,
            size: 80,
          ),
        ],
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/yellowpay_logo.png',
            height: 45,
          ),
        ],
      ),
    );
  }
}

class CardsWidget extends StatelessWidget {
  const CardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 250,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CurrenctCard(
            name: '신한',
            code: 'VISA',
            amount: '5999',
            icon: Icons.payment_outlined,
            isInverted: false,
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: const CurrenctCard(
              name: 'KB국민',
              code: 'MASTER',
              amount: '9000',
              icon: Icons.account_balance_wallet,
              isInverted: true,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -40),
            child: const CurrenctCard(
              name: '현대',
              code: 'AMEX',
              amount: '8048',
              icon: Icons.payment_outlined,
              isInverted: false,
            ),
          ),
        ],
      ),
    );
  }
}
